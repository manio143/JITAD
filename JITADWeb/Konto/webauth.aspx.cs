using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Live;
using System.Threading.Tasks;

namespace JITADWeb.Konto
{
    public partial class webauth : System.Web.UI.Page
    {
        private LiveAuthClient liveAuthClient = new LiveAuthClient(GlobalFunctions.AppId, GlobalFunctions.AppSecret, "https://jitad2015.waw.pl/Konto/webauth");
        private LiveConnectSession session = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            string login = Request["login"];
            string logout = Request["logout"];
            string returnUrl = Request["ReturnUrl"];
            if (login != null)
            {
                string[] scopes = new string[] { "wl.signin", "wl.basic" };
                string loginUrl = liveAuthClient.GetLoginUrl(scopes, "https://jitad2015.waw.pl/Konto/webauth");
                Response.Redirect(loginUrl, true);
            }
            if (logout != null)
            {
                if (returnUrl != null) returnUrl = "&ReturnUrl=" + returnUrl;
                string logoutUrl = "https://jitad2015.waw.pl/Konto/webauth?l=1" + returnUrl;
                if (logout == "2") goto noneMS;
                logoutUrl = liveAuthClient.GetLogoutUrl("https://jitad2015.waw.pl/Konto/webauth?l=1" + returnUrl);
                liveAuthClient.ClearSession(new HttpContextWrapper(Context));
            noneMS:
                Session.Abandon();
                Response.Redirect(logoutUrl, true);
            }
            if (Request["l"] != null)
            {
                if (returnUrl != null) Response.Redirect("~/"+returnUrl, true);
                else
                    Response.Redirect("~/", true);
            }
            RegisterAsyncTask(new PageAsyncTask(getAuthResult));

        }
        private async Task getAuthResult()
        {
            try
            {

                LiveLoginResult result = await liveAuthClient.ExchangeAuthCodeAsync(new HttpContextWrapper(Context));
                session = result.Session;
                new JITAD.UserStats().SendMessage("WebAuth", "jitad", "Inside getAuthResult()");
                if (result.Status == LiveConnectSessionStatus.Connected)
                {
                    var liveClient = new LiveConnectClient(session);
                    var myData = await liveClient.GetAsync("me");
                    string user_id = myData.Result["id"].ToString();
                    new JITAD.UserStats().SendMessage("WbAuth", "jitad", "Successfully connected");
                    getSession(user_id);
                }
            }
            catch (LiveAuthException)
            {

            }
        }

        private void getSession(string user_id)
        {
            JITAD.UserSystem usrsys = new JITAD.UserSystem();
            if (!usrsys.UserExists(user_id))
            { usrsys.Register(user_id, "MSAccount", user_id + "@microsoftaccount.com"); usrsys.IsMSAccount(user_id, true); }
            Session["CurrentUser"] = usrsys.LogIn(user_id, "MSAccount");
        }
    }
}