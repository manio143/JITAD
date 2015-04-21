using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JITADWeb.Admin
{
    public partial class Arrived : System.Web.UI.Page
    {
        List<UserArrived> usr = new List<UserArrived>();

        protected void Page_Load(object sender, EventArgs e)
        {
            JITAD.UserStats stats = new JITAD.UserStats();
            var users = stats.GetUsers();
            var schools = stats.GetSchools();
            foreach (var u in users)
            {
                UserArrived us = new UserArrived();
                us.Name = u.Name;
                us.Surname = u.Surname;
                us.Login = u.UserName;
                us.Time = u.ArrivedAtEvent;
                us.Arrived = u.ArrivedAtEvent != DateTime.MinValue;
                us.School = schools[u.SchoolId];
                usr.Add(us);
            }
            if (!Page.IsPostBack)
            {
                rpArr.DataSource = usr;
                rpArr.DataBind();
            }
        }

        protected void rpArr_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                RepeaterItem ri = e.Item;
                var dataItem = ri.DataItem as UserArrived;
                var isDefaultCheckBox = ri.FindControl("cbArrived") as CheckBox;
                isDefaultCheckBox.Checked = dataItem.Arrived;
            }
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            //CheckBox chk = (CheckBox)sender;
            //RepeaterItem item = (RepeaterItem)chk.NamingContainer;
            //Label lblLogin = (Label)item.FindControl("lblLogin");
            //string username = lblLogin.Text;

            try
            {
                foreach (RepeaterItem item in rpArr.Items)
                {
                    int index = item.ItemIndex;
                    CheckBox chk = item.Controls.OfType<CheckBox>().Single<CheckBox>();
                    string username = usr[index].Login;
                    JITAD.UserSystem sys = new JITAD.UserSystem();
                    sys.ArrivedAtEvent(username, chk.Checked);
                }
            }
            catch (Exception)
            {
                Page page = HttpContext.Current.CurrentHandler as Page;
                if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
                {
                    page.ClientScript.RegisterClientScriptBlock(page.GetType(), "alert", "alert('Wystąpił błąd!')", true /* addScriptTags */);
                }
            }
        }
    }
    public class UserArrived
    {
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Login { get; set; }
        public string School { get; set; }
        public bool Arrived { get; set; }
        public DateTime Time { get; set; }
    }
}