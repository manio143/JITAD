using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JITAD;

namespace JITADWeb.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User usr = (User)Session["CurrentUser"];
            if (usr == null || !usr.IsAdmin)
                Response.Redirect("~/PermissionDenied?ReturnUrl="+Request.RawUrl, true);
        }
    }
}