using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JITAD;

namespace JITADWeb.Konto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {    
            User usr = (User)Session["CurrentUser"];
            if (usr == null)
                Response.Redirect("~/PermissionDenied?ReturnUrl=" + Request.RawUrl, true);
            if (usr.IsMSAccount)
            {
                pnPassChange.Enabled = false;
                pnPassChange.Visible = false;
            }
            if (!Page.IsPostBack)
            {
                if (usr.Name != null) txtName.Text = usr.Name;
                if (usr.Surname != null) txtSurname.Text = usr.Surname;

                ddlSchools.Items.Add("Wybierz szkołę...");
                getSchoolsList();

                ddlSchools.SelectedIndex = usr.SchoolId;
            }
        }

        private void getSchoolsList()
        {
            UserStats s = new UserStats();
            var schools = s.GetSchools();
            schools.RemoveAt(0);
            foreach (var sc in schools)
            {
                ddlSchools.Items.Add(sc);
            }
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            try
            {
                UserSystem usrsys = new UserSystem();
                User usr = (User)Session["CurrentUser"];
                usrsys.ChangePassword(usr.UserName, txtOldPassword.Text, txtNewPassword.Text);
                lblError.Visible = false;
                lblSuccess.Visible = true;
                lblSuccess.Text = "Zapisano.";
            }
            catch (System.Data.SqlClient.SqlException)
            {
                lblError.Text = "Wystąpił nieoczekiwany błąd. (SQL)";
                lblError.Visible = true;
            }
            catch (UserException ue)
            {
                string ErrorMssg = "";
                switch (ue.Type)
                {
                    case UserException.UserExceptionType.Unknown:
                        ErrorMssg = "Wystąpił nieoczekiwany błąd.";
                        break;
                    case UserException.UserExceptionType.IncorrectPassword:
                        ErrorMssg = "Niepoprawne hasło.";
                        break;
                }
                lblError.Text = ErrorMssg;
                lblError.Visible = true;
            }
        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            try
            {
                User usr = (User)Session["CurrentUser"];
                if (String.IsNullOrEmpty(txtName.Text)) usr.Name = null;
                else usr.Name = txtName.Text;
                if (String.IsNullOrEmpty(txtSurname.Text)) usr.Surname = null;
                else usr.Surname = txtSurname.Text;
                usr.SchoolId = ddlSchools.SelectedIndex;

                UserSystem sys = new UserSystem();
                usr = sys.Update(usr.UserName, usr);
                Session["CurrentUser"] = usr;

                lblSuccess.Text = "Zapisano pomyślnie.";
                lblSuccess.Visible = true;
            }
            catch(Exception)
            {
                lblError.Text = "Wystąpił błąd. Spróbuj później.";
                lblError.Visible = true;
            }
        }
    }
}