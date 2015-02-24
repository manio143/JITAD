using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JITADWeb.Admin
{
    public partial class Wiadomości : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            JITAD.UserStats stats = new JITAD.UserStats();
            var messages = stats.GetMessages();

            rpMssg.DataSource = messages;
            rpMssg.DataBind();
        }
        public string LineToBr(object s)
        {
            return s.ToString().Replace("\n", "<br />");
        }
    }
    
}