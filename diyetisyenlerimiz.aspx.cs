using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class diyetisyenlerimiz : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("SELECT ADI,SOYADI,MAIL FROM diyetisyen",baglan);
            baglan.Open();
            SqlDataReader oku= komut.ExecuteReader();
            while (oku.Read()) 
            {
                string name = oku["ADI"].ToString();
                string soyadi = oku["SOYADI"].ToString();
                string email = oku["MAIL"].ToString();
                //string imageUrl = oku["ImageUrl"].ToString();
                // <img src='{imageUrl}' alt='Diyetisyen Resmi' class='img-fluid'

                diyetisyenkart.InnerHtml += $@"
                            <div class='diyetisyen-card'>
                                />
                                <div class='diyetisyen-info'>
                                    <h2>{name}{soyadi}</h2>
                                    <p>Uzmanlık Alanı:Beslenme ve Diyetetik</p>
                                    <p>İletişim: {email}</p>
                                </div>
                                <div class='gradient-overlay'></div>
                            </div>";

            }


        }
    }
}