using System;

namespace WebApplication1
{
    public partial class hesaplamalar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Sayfa yüklenirken yapılacak işlemler buraya yazılabilir,
            // ancak şu anda herhangi bir işlem yapmıyoruz.
        }

        protected void btnHesapla_Click(object sender, EventArgs e)
        {
            // Kullanıcının girdiği değerleri alıyoruz
            double kilo = Convert.ToDouble(txtKilo.Text); // Kullanıcının girdiği kilo değerini alıyoruz
            double boy = Convert.ToDouble(txtBoy.Text); // Kullanıcının girdiği boy değerini alıyoruz
            int yas = Convert.ToInt32(txtYas.Text); // Kullanıcının girdiği yaş değerini alıyoruz
            string cinsiyet = ddlCinsiyet.SelectedValue; // Kullanıcının seçtiği cinsiyet değerini alıyoruz

            // BMR hesaplaması
            double bmr;
            if (cinsiyet == "erkek")
            {
                bmr = 66.5 + (5 * boy) + (13.75 * kilo) - (6.77 * yas);
            }
            else // kadın için
            {
                bmr = 655.1 + (1.85 * boy) + (9.56 * kilo) - (4.67 * yas);
            }

            // Günlük su ihtiyacı hesaplama
            double suIhtiyaci = kilo * 35; // Her kilogram ağırlık için yaklaşık 30-35 ml su tüketilmesi önerilir

            // Ideal kilo hesaplama
            double idealKilo;
            if (cinsiyet == "erkek")
            {
                idealKilo = 50 + 2.3 * ((boy / 2.54) - 60);
            }
            else // kadın için
            {
                idealKilo = 45.5 + 2.3 * ((boy / 2.54) - 60);
            }

            // BMI hesaplaması
            double boyMetreCinsinden = boy / 100; // Boy'u metreye çeviriyoruz (cm'den m'ye)
            double bmi = kilo / (boyMetreCinsinden * boyMetreCinsinden); // BMI hesaplamasını yapıyoruz

            // Sonuçları ekrana yazdırma
            sonuc.InnerText = string.Format("Bazal Metabolizma Hızı: {0:0.00}, Günlük Su İhtiyacı: {1:0.00} ml, Ideal Kilo: {2:0.00} kg, Vücut Kitle Endeksi: {3:0.00}", bmr, suIhtiyaci, idealKilo, bmi);
        }
    }
}
