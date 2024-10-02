using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; // ConfigurationManager sınıfını kullanmak için

namespace WebApplication1
{
    public partial class DiyetisyenAnasayfa : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            if (Session["kadi"] == null)
                Response.Redirect("~/giris.aspx");

            else
            {
                Label1.Text = Session["kadi"].ToString();
            }

            if (!IsPostBack)
            {
                //LoadDiyetListesi();
            }
            string diyetisyenkullaniciadi = Session["kadi"].ToString();

            // Veritabanı bağlantısını aç
            baglan.Open();

            // SqlCommand nesnesini oluştur ve sorguyu tanımla
            SqlCommand komut = new SqlCommand("SELECT DANISAN_KULLANICIADI FROM diyetisyen WHERE KULLANICI_ADI=@kullaniciadi", baglan);

            // Parametreyi ekleyerek SQL injection saldırılarını önle
            komut.Parameters.AddWithValue("@kullaniciadi", diyetisyenkullaniciadi);

            // Sorguyu çalıştır ve sonucu SqlDataReader nesnesine aktar
            SqlDataReader reader = komut.ExecuteReader();

            // Eğer bir sonuç varsa
            if (reader.Read())
            {
                // Danışan kullanıcı adını al ve label4'ün Text özelliğine ata
                lblKullaniciAdi.Text = reader["DANISAN_KULLANICIADI"].ToString();
            }

            // SqlDataReader'ı kapat
            reader.Close();

            // Veritabanı bağlantısını kapat
            baglan.Close();

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            string adSoyad = txtAdSoyad.Text;
            string kullaniciAdi = txtKullaniciAdi.Text;
            string email = txtEmail.Text;
            string sabah = txtSabah.Text;
            string oglen = txtOglen.Text;
            string aksam = txtAksam.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString;

            string query = @"
                INSERT INTO [deneme].[dbo].[diyetlistesi] 
                (SABAH, OGLEN, AKSAM, TARIH, DANISAN_KULLANICI_ADI)
                VALUES (@Sabah, @Oglen, @Aksam, @Tarih, @DanisanKullaniciAdi)";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Sabah", sabah);
                    cmd.Parameters.AddWithValue("@Oglen", oglen);
                    cmd.Parameters.AddWithValue("@Aksam", aksam);
                    cmd.Parameters.AddWithValue("@Tarih", DateTime.Now);
                    cmd.Parameters.AddWithValue("@DanisanKullaniciAdi", kullaniciAdi);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            // Danışan bilgilerini Label'lara aktar
          //  lblAdSoyad.Text = adSoyad;
            lblKullaniciAdi.Text = kullaniciAdi;
         //   lblEmail.Text = email;

            // GridView'i güncelle
           // LoadDiyetListesi();
        }

      
        
    }
}
