using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : MasterPage
{
    protected void Page_Init(object sender, EventArgs e)
    {

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string LinksForLoggedInOrNot()
    {
        string R = "";
        JITAD.User usr = (JITAD.User)Session["CurrentUser"];
        string addReturnUrl = "";
        if (Request.RawUrl != "/" && Request.RawUrl != "/Konto/Rejestracja" && Request.RawUrl != "/Konto/Zaloguj" && Request.RawUrl != "/PermissionDenied")
            addReturnUrl = "?ReturnUrl=" + Request.RawUrl;
        if (usr == null)
            R += "<a href=\"/Konto/Zaloguj" + addReturnUrl + "\">Zaloguj się</a>";
        else
        {
            if (Request.RawUrl.Contains("/Konto/") || Request.RawUrl.Contains("/Admin/") || Request.RawUrl.Contains("/Permission")) addReturnUrl = "";
            R += "<a href=\"/Konto/\">Moje Konto</a>";
            int MSaccount = usr.IsMSAccount ? 1 : 2;
            if (!String.IsNullOrEmpty(addReturnUrl)) addReturnUrl = "&" + addReturnUrl.Substring(1);
            R += "<li><a href=\"/Konto/webauth?logout=" + MSaccount.ToString() + addReturnUrl + "\">Wyloguj</a></li>";
        }
        return R;
    }
}