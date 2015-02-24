using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JITADWeb.Admin
{
    public partial class Użytkownicy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminQuery_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/UserQuery?UserName=" + txtAdminQuery.Text + "&IsAdmin=true", true);
        }

        protected void btnUserQuery_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/UserQuery?UserName=" + txtUserQuery.Text + "&IsAdmin=false", true);
        }

        protected void btnEmailQuery_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Admin/UserQuery?Email=" + txtEmailQuery.Text + "&IsAdmin=all", true);
        }

        protected void btnAdminGive_Click(object sender, EventArgs e)
        {
            try
            {
                JITAD.UserSystem sys = new JITAD.UserSystem();
                JITAD.User u = sys.SetAdmin(txtAdminGive.Text, true);
                if (((JITAD.User)Session["CurrentUser"]).UserName == txtAdminGive.Text) Session["CurrentUser"] = u;
                txtAdminGive.Text = "";
                lblSuccess.Visible = true;
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
                lblError.Visible = true;
            }
        }

        protected void btnAdminTake_Click(object sender, EventArgs e)
        {
            try
            {
                JITAD.UserSystem sys = new JITAD.UserSystem();
                JITAD.User u = sys.SetAdmin(txtAdminTake.Text, false);
                if (((JITAD.User)Session["CurrentUser"]).UserName == txtAdminTake.Text) Session["CurrentUser"] = u;
                txtAdminTake.Text = "";
                lblSuccess.Visible = true;
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
                lblError.Visible = true;
            }
        }
    }
}