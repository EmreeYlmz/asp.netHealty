using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class danisankayit : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Tüm alanların dolu olup olmadığını kontrol edin
            if (string.IsNullOrEmpty(txtkullanicidanisanad.Text) ||
                string.IsNullOrEmpty(txtDanisanAd.Text) ||
                string.IsNullOrEmpty(txtDanisanSoyad.Text) ||
                string.IsNullOrEmpty(txtDanisanEmail.Text) ||
                string.IsNullOrEmpty(txtDanisanPassword.Text) ||
                string.IsNullOrEmpty(txtDanisanPasswordRepeat.Text))
            {
                Label1.Text = "Lütfen tüm alanları doldurun.";
                Label1.Attributes.Add("class", "fade-in"); // Animasyonlu bir efekt ekleyebilirsiniz.
                return; // Kayıt işlemini durdurun
            }

            // Şifrelerin uyuşup uyuşmadığını kontrol edin
            if (txtDanisanPassword.Text != txtDanisanPasswordRepeat.Text)
            {
                Label1.Text = "Girilen iki şifre uyuşmuyor";
                Label1.Attributes.Add("class", "fade-in"); // Animasyonlu bir efekt ekleyebilirsiniz.
                return; // Kayıt işlemini durdurun
            }

            try
            {
                // Kullanıcı adının benzersiz olup olmadığını kontrol et
                SqlCommand kontrolKomut = new SqlCommand("SELECT COUNT(*) FROM danisan WHERE KULLANICI_ADI = @KullaniciAdi", baglan);
                kontrolKomut.Parameters.AddWithValue("@KullaniciAdi", txtkullanicidanisanad.Text);
                baglan.Open();
                int kullaniciSayisi = (int)kontrolKomut.ExecuteScalar();
                if (kullaniciSayisi > 0)
                {
                    Label1.Text = "Bu kullanıcı adı zaten kullanılıyor.";
                    Label1.Attributes.Add("class", "fade-in-error"); // Hata animasyonlu bir efekt ekleyebilirsiniz.
                    return; // Kayıt işlemini durdurun
                }

                // Kullanıcı adı benzersiz ise kullanıcıyı kaydet
                SqlCommand komut = new SqlCommand("INSERT INTO danisan(KULLANICI_ADI, ADI, SOYADI, MAIL, SIFRE) VALUES (@KullaniciAdi, @Ad, @Soyad, @Email, @Sifre)", baglan);
                komut.Parameters.AddWithValue("@KullaniciAdi", txtkullanicidanisanad.Text);
                komut.Parameters.AddWithValue("@Ad", txtDanisanAd.Text);
                komut.Parameters.AddWithValue("@Soyad", txtDanisanSoyad.Text);
                komut.Parameters.AddWithValue("@Email", txtDanisanEmail.Text);
                komut.Parameters.AddWithValue("@Sifre", txtDanisanPassword.Text);

                komut.ExecuteNonQuery();
                Label1.Text = "Kayıt başarılı!";
                Label1.Attributes.Add("class", "fade-in-success"); // Başarılı animasyonlu bir efekt ekleyebilirsiniz.
                Response.Redirect("~/giris.aspx");
                // Alanları temizle
                txtDanisanAd.Text = "";
                txtDanisanSoyad.Text = "";
                txtDanisanEmail.Text = "";
                txtDanisanPassword.Text = "";
                txtDanisanPasswordRepeat.Text = "";
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


        protected void txtDanisanPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtDanisanAd_TextChanged(object sender, EventArgs e)
        {
            Label1.Text = "";
        }
    }
}
