using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void btnanasayfa_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/anasayfa.aspx");

        }

        protected void btndiyetisyenlerimiz_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/diyetisyenlerimiz.aspx");

        }

        protected void btnhakkimizda_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/hakkimizda.aspx");

        }

        protected void btngiris_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/giris.aspx");

        }
    }
}