using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JITAD;

namespace JITADWeb.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        public int GetUserCount()
        {
            try
            {
                UserStats stats = new UserStats();
                return stats.GetUserCount();
            }catch
            { return -1; }
        }
        public int GetAdminCount()
        {
            try
            {
                UserStats stats = new UserStats();
                return stats.GetAdminCount();
            }
            catch
            { return -1; }
        }
    }
}