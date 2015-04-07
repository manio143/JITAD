using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JITAD;

namespace JITADWeb.Konto
{
    public partial class Zaloguj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["CurrentUser"] != null) Response.Redirect("~/Konto/", true);
            if (!Page.IsPostBack)
            {
                ddlSchools.Items.Add("Wybierz szkołę...");
                getSchoolsList();
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
        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            try
            {
                UserSystem usrsys = new UserSystem();
                Session["CurrentUser"] = usrsys.LogIn(txtLogin.Text, txtPassword.Text);
                if (GlobalFunctions.IsLocalUrl(Request.QueryString["ReturnUrl"]))
                    Response.Redirect(String.Format("~/{0}", Request.QueryString["ReturnUrl"]), true);
                else
                    Response.Redirect("~/", false);
            }
            catch (System.Data.SqlClient.SqlException sqle)
            {
                lblError.Text = "Wystąpił nieoczekiwany błąd. (SQL)";
                lblError.Visible = true;
            }
            catch (UserException ue)
            {
                string ErrorMssg = "";
                switch (ue.Type)
                {
                    case UserException.UserExceptionType.IncorrectPassword:
                        ErrorMssg = "Niepoprawne hasło.";
                        break;
                    case UserException.UserExceptionType.Unknown:
                        ErrorMssg = "Wystąpił nieoczekiwany błąd.";
                        break;
                    case UserException.UserExceptionType.UserNotFound:
                        ErrorMssg = "Nie ma takiego użytkownika.";
                        break;
                    default:
                        ErrorMssg = "Wystąpił nieoczekiwany błąd.";
                        break;
                }
                lblError.Text = ErrorMssg;
                lblError.Visible = true;
            }
        }
        private string getReturnUrl()
        {
            if (GlobalFunctions.IsLocalUrl(Request.QueryString["ReturnUrl"]))
                return "&ReturnUrl=" + Request.QueryString["ReturnUrl"];
            else
                return "";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (RegValidate())
            {
                try
                {
                    UserSystem usrsys = new UserSystem();
                    var usr = usrsys.Register(txtLoginReg.Text, txtPassReg.Text, txtEmail.Text);
                    usr.Name = txtName.Text;
                    usr.Surname = txtSurname.Text;
                    usr.SchoolId = ddlSchools.SelectedIndex;
                    usrsys.Update(usr.UserName, usr);
                    if (!String.IsNullOrEmpty(txtPolecacz.Text)) usrsys.addPolecacz(usr.UserName, txtPolecacz.Text);
                    clearForms();
                    lblSuccess.Text = "Zarejestrowano pomyślnie.";
                    lblErrorReg.Visible = false;
                    lblSuccess.Visible = true;
                }
                catch (System.Data.SqlClient.SqlException sqle)
                {
                    lblErrorReg.Text = "Wystąpił nieoczekiwany błąd. (SQL)";
                    lblErrorReg.Visible = true;
                }
                catch (UserException ue)
                {
                    string ErrorMssg = "";
                    switch (ue.Type)
                    {
                        case UserException.UserExceptionType.Unknown:
                            ErrorMssg = "Wystąpił nieoczekiwany błąd.";
                            break;
                        case UserException.UserExceptionType.UserAlreadyExists:
                            ErrorMssg = "Użytkownik o takim loginie już istnieje.";
                            break;
                        case UserException.UserExceptionType.EmailAlreadyTaken:
                            ErrorMssg = "Podany e-mail jest już zajęty.";
                            break;
                        default:
                            ErrorMssg = "Wystąpił nieoczekiwany błąd.";
                            break;
                    }
                    lblErrorReg.Text = ErrorMssg;
                    lblErrorReg.Visible = true;
                }
            }
        }

        private bool RegValidate()
        {
            bool validated = true;
            if (String.IsNullOrEmpty(txtLoginReg.Text)) { lblLMust.Visible = true; validated = false; }
            else lblLMust.Visible = false;
            if (String.IsNullOrEmpty(txtEmail.Text)) { lblEMust.Visible = true; validated = false; }
            else lblEMust.Visible = false;
            if (String.IsNullOrEmpty(txtPassReg.Text)) { lblPMust.Visible = true; validated = false; }
            else lblPMust.Visible = false;
            if (String.IsNullOrEmpty(txtPasswordAgain.Text)) { lblPAMust.Visible = true; validated = false; }
            else lblPAMust.Visible = false;
            if (txtPasswordAgain.Text.CompareTo(txtPassReg.Text) != 0) { lblPASame.Visible = true; validated = false; }
            else lblPASame.Visible = false;
            if (String.IsNullOrEmpty(txtName.Text)) { lblNMust.Visible = true; validated = false; }
            else lblNMust.Visible = false;
            if (String.IsNullOrEmpty(txtSurname.Text)) { lblSMust.Visible = true; validated = false; }
            else lblSMust.Visible = false;
            if (ddlSchools.SelectedIndex == 0) { lblScMust.Visible = true; validated = false; }
            else lblScMust.Visible = false;
            return validated;
        }
        private void clearForms()
        {
            txtLoginReg.Text = "";
            txtEmail.Text = "";
            txtSurname.Text = "";
            txtName.Text = "";
            txtPolecacz.Text = "";
            ddlSchools.SelectedIndex = 0;
        }
    }
}