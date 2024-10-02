using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class danisanmaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogoutLink_Click(object sender, EventArgs e)
        {

            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/giris.aspx");
        }

        protected void btnyemek_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/danisan_aspx/yemekltarifleri.aspx");

        }
    }
}