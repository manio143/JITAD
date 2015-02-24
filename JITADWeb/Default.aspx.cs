using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JITADWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Konto/Zaloguj", true);
        }

        [System.Web.Services.WebMethod()]
        [System.Web.Script.Services.ScriptMethod()]
        public static bool SendMessage(string email, string title, string mssg)
        {
            JITAD.UserStats stats = new JITAD.UserStats();
            stats.SendMessage(title, email, mssg);
            return true;
        }
    }
}