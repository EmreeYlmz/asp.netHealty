using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;

namespace WebApplication1
{
    public partial class danisanblog : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bloggoruntule();
            }
        }

        private void bloggoruntule()
        {
            StringBuilder html = new StringBuilder();

            string query = "SELECT DIYETISYEN_ADI, DIYETISYEN_SOYADI, BASLIK, ICERIK, RESIM FROM blog";
            using (SqlCommand komut = new SqlCommand(query, baglan))
            {
                baglan.Open();
                SqlDataReader reader = komut.ExecuteReader();

                while (reader.Read())
                {
                    string diyetisyenAdi = reader["DIYETISYEN_ADI"].ToString();
                    string diyetisyenSoyadi = reader["DIYETISYEN_SOYADI"].ToString();
                    string blogBaslik = reader["BASLIK"].ToString();
                    string blogIcerik = reader["ICERIK"].ToString();
                    string resimYolu = reader["RESIM"].ToString();

                    html.Append($@"
                        <div class='card'>
                            <div class='card-body'>
                                <h5 class='card-title'>{blogBaslik}</h5>
                                <div class='dietician-info'>
                                    <img class='user-profile-pic' src='{resimYolu}' alt='Resim'>
                                    <p class='card-text'>Yazar: {diyetisyenAdi} {diyetisyenSoyadi}</p>
                                </div>
                                <div class='blog-content'>
                                    <p class='card-text'>{blogIcerik}</p>
                                </div>
                            </div>
                        </div>");
                }

                reader.Close();
                baglan.Close();
            }

            blogContainerLiteral.Text = html.ToString();
        }
    }
}
