using System;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class DanisanAnasayfa : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KULLANICI_ADI"] == null)
                Response.Redirect("~/giris.aspx");
            else
            {
                Label1.Text = Session["KULLANICI_ADI"].ToString();

                // Kullanıcı adını al
                string kullaniciAdi = Session["KULLANICI_ADI"].ToString();

                // SQL sorgusu
                string sqlQuery = "SELECT [diyet_id], [SABAH], [OGLEN], [AKSAM], [TARIH], [DANISAN_KULLANICI_ADI] FROM [deneme].[dbo].[diyetlistesi] WHERE [DANISAN_KULLANICI_ADI] = @kullaniciAdi";

                // Komut oluştur
                SqlCommand komut = new SqlCommand(sqlQuery, baglan);
                komut.Parameters.AddWithValue("@kullaniciAdi", kullaniciAdi);

                try
                {
                    // Bağlantıyı aç
                    baglan.Open();

                    // Veriyi oku
                    SqlDataReader reader = komut.ExecuteReader();
                    if (reader.Read())
                    {
                        // Veri bulundu, etiketlere veriyi ata
                        lblDiyetisyen.Text = reader["DANISAN_KULLANICI_ADI"].ToString();
                        lblBaslamaTarihi.Text = reader["TARIH"].ToString();
                        sabahlistetext.Text = reader["SABAH"].ToString();
                        oglenlistetext.Text = reader["OGLEN"].ToString();
                        aksamlistetext.Text = reader["AKSAM"].ToString();
                    }
                    else
                    {
                        // Veri bulunamadı
                        // İşlem yapılabilir, örneğin bir hata mesajı gösterilebilir
                    }
                }
                catch (Exception ex)
                {
                    // Hata işleme
                    // İşlem yapılabilir, örneğin bir hata mesajı gösterilebilir
                }
                finally
                {
                    // Bağlantıyı kapat
                    baglan.Close();
                }
            }
        }
    }
}
