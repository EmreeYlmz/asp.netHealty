using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class diyetisyenkayit : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Tüm alanların dolu olup olmadığını kontrol edin
            if (string.IsNullOrEmpty(txtdiyetisyenkullanicicad.Text) ||
                string.IsNullOrEmpty(txtDiyetisyenAd.Text) ||
                string.IsNullOrEmpty(txtDiyetisyenSoyad.Text) ||
                string.IsNullOrEmpty(txtDiyetisyenEmail.Text) ||
                string.IsNullOrEmpty(txtDiyetisyenPassword.Text) ||
                string.IsNullOrEmpty(txtDiyetisyenPasswordRepeat.Text))
            {
                Label1.Text = "Lütfen tüm alanları doldurun.";
                Label1.Attributes.Add("class", "fade-in"); // Animasyonlu bir efekt ekleyebilirsiniz.
                return; // Kayıt işlemini durdurun
            }

            // Şifrelerin uyuşup uyuşmadığını kontrol edin
            if (txtDiyetisyenPassword.Text != txtDiyetisyenPasswordRepeat.Text)
            {
                Label1.Text = "Girilen iki şifre uyuşmuyor";
                Label1.Attributes.Add("class", "fade-in"); // Animasyonlu bir efekt ekleyebilirsiniz.
                return; // Kayıt işlemini durdurun
            }

            try
            {
                // Kullanıcı adının benzersiz olup olmadığını kontrol et
                SqlCommand kontrolKomut = new SqlCommand("SELECT COUNT(*) FROM diyetisyen WHERE KULLANICI_ADI = @KullaniciAdi", baglan);
                kontrolKomut.Parameters.AddWithValue("@KullaniciAdi", txtdiyetisyenkullanicicad.Text);
                baglan.Open();
                int kullaniciSayisi = (int)kontrolKomut.ExecuteScalar();
                if (kullaniciSayisi > 0)
                {
                    Label1.Text = "Bu kullanıcı adı zaten kullanılıyor.";
                    Label1.Attributes.Add("class", "fade-in-error"); // Hata animasyonlu bir efekt ekleyebilirsiniz.
                    return; // Kayıt işlemini durdurun
                }

                // Kullanıcı adı benzersiz ise kullanıcıyı kaydet
                SqlCommand komut = new SqlCommand("INSERT INTO diyetisyen(KULLANICI_ADI, ADI, SOYADI, MAIL, SIFRE) VALUES (@KullaniciAdi, @Ad, @Soyad, @Email, @Sifre)", baglan);
                komut.Parameters.AddWithValue("@KullaniciAdi", txtdiyetisyenkullanicicad.Text);
                komut.Parameters.AddWithValue("@Ad", txtDiyetisyenAd.Text);
                komut.Parameters.AddWithValue("@Soyad", txtDiyetisyenSoyad.Text);
                komut.Parameters.AddWithValue("@Email", txtDiyetisyenEmail.Text);
                komut.Parameters.AddWithValue("@Sifre", txtDiyetisyenPassword.Text);

                komut.ExecuteNonQuery();
                Label1.Text = "Kayıt başarılı!";
                Label1.Attributes.Add("class", "fade-in-success"); // Başarılı animasyonlu bir efekt ekleyebilirsiniz.
                Response.Redirect("~/giris.aspx");

            }
            catch (Exception ex)
            {
                Label1.Text = "Kayıt sırasında bir hata oluştu: " + ex.Message;
                Label1.Attributes.Add("class", "fade-in-error"); // Hata animasyonlu bir efekt ekleyebilirsiniz.
            }
            finally
            {
                baglan.Close();
            }
        }
    }
}
