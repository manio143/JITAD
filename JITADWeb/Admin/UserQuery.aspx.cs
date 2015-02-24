using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JITAD;

namespace JITADWeb.Admin
{
    public partial class AdminQuery : System.Web.UI.Page
    {
        public string UserName = "*";
        public string Email = "*";
        public string IsAdmin = "false";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["UserName"] != null) UserName = Request.QueryString["UserName"];
            if (Request.QueryString["Email"] != null) Email = Request.QueryString["Email"];
            if (Request.QueryString["IsAdmin"] != null) IsAdmin = Request.QueryString["IsAdmin"]; else IsAdmin = "all";

            UserStats stats = new UserStats();
            var users = stats.GetUsers();
            var requestedUsers = from usr in users
                                 where Like(usr.UserName, this.UserName)
                                 && Like(usr.Email, this.Email)
                                 && Admin(usr.IsAdmin)
                                 select usr;
            rptUserQuery.DataSource = requestedUsers;
            rptUserQuery.DataBind();
        }

        private bool Admin(bool p)
        {
            if (this.IsAdmin == "all") return true;
            else return Convert.ToBoolean(this.IsAdmin) == p;
        }

        private bool Like(string p1, string p2)
        {
            if (p2.Contains('*') || p2.Contains('$') || p2.Contains('#'))
            {
                p2 = p2.Replace("*", ".*");
                p2 = p2.Replace("$", ".");
                p2 = p2.Replace("#", "\\d");
            }
                p2 = "\\b" + p2 + "\\b";

            var match = System.Text.RegularExpressions.Regex.Match(p1, p2);
            return match.Success;
        }
    }
}