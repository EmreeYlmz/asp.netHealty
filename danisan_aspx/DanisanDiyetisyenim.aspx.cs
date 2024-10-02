using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class DanisanDiyetisyenim : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            diyetisyenkullaniciaditxt.Visible = false;
            diyetisyenidtxt.Visible = false;
            Label1.Visible = false;

            /* if (Session["KULLANICI_ADI"] == null)
             {
                 Response.Redirect("~/giris.aspx");
             }
             else
             {
                 Label1.Text = Session["KULLANICI_ADI"].ToString();
                 if (!IsPostBack)
                 {
                 }
             }*/

            LoadDietitianInfo();
            string dyt=diyetisyenkullaniciaditxt.Text;
            GetDiyetisyenId();
            kytd();




        }

        public void kytd()
        {
            string kullaniciAdi = Session["KULLANICI_ADI"].ToString();
            baglan.Open();
            string komut = "UPDATE diyetisyen SET DANISAN_KULLANICIADI=@dnsn WHERE diyetisyen_id=@dytid";
            SqlCommand cmdUpdate = new SqlCommand(komut, baglan);
            cmdUpdate.Parameters.AddWithValue("@dytid", diyetisyenidtxt.Text);
            cmdUpdate.Parameters.AddWithValue("@dnsn", kullaniciAdi);
            cmdUpdate.ExecuteNonQuery();
            baglan.Close();
        }



        private int GetDiyetisyenId()
        {

            int diyetisyenId = -1; // Varsayılan değer, eğer bulunamazsa -1 olarak kalacak

            try
            {
                baglan.Open();
                string query = "SELECT diyetisyen_id FROM diyetisyen WHERE KULLANICI_ADI = @kullaniciAdi";
                SqlCommand cmd = new SqlCommand(query, baglan);
                cmd.Parameters.AddWithValue("@kullaniciAdi", diyetisyenkullaniciaditxt.Text);
                object result = cmd.ExecuteScalar();

                if (result != null) // Eğer sonuç null değilse, yani bir değer döndüyse
                {
                    diyetisyenId = Convert.ToInt32(result);
                    diyetisyenidtxt.Text = diyetisyenId.ToString();
                }
            }
            catch (Exception ex)
            {
                // Hata yönetimi
            }
            finally
            {
                baglan.Close();
            }

            return diyetisyenId;
        }

        public void LoadDietitianInfo()
        {
            string kullaniciAdi = Session["KULLANICI_ADI"].ToString();

            try
            {
                baglan.Open();

                // Danışanın diyetisyen ID'sini ve adını al
                string queryDanisan = "SELECT DIYETISYEN_ID, DIYETISYEN_ADI FROM danisan WHERE KULLANICI_ADI = @kullaniciAdi";
                SqlCommand cmdDanisan = new SqlCommand(queryDanisan, baglan);
                cmdDanisan.Parameters.AddWithValue("@kullaniciAdi", kullaniciAdi);

                SqlDataReader readerDanisan = cmdDanisan.ExecuteReader();
                if (readerDanisan.Read())
                {
                    int diyetisyenId = readerDanisan["DIYETISYEN_ID"] != DBNull.Value ? Convert.ToInt32(readerDanisan["DIYETISYEN_ID"]) : 0;
                    string diyetisyenAdi = readerDanisan["DIYETISYEN_ADI"] != DBNull.Value ? readerDanisan["DIYETISYEN_ADI"].ToString() : string.Empty;

                    readerDanisan.Close(); // Reader'ı kapat

                    if (diyetisyenId != 0)
                    {
                        // Diyetisyen bilgilerini al
                        string queryDiyetisyen = "SELECT KULLANICI_ADI, ADI, SOYADI, MAIL, EGITIM FROM diyetisyen WHERE diyetisyen_id = @diyetisyenId";
                        SqlCommand cmdDiyetisyen = new SqlCommand(queryDiyetisyen, baglan);
                        cmdDiyetisyen.Parameters.AddWithValue("@diyetisyenId", diyetisyenId);

                        SqlDataReader readerDiyetisyen = cmdDiyetisyen.ExecuteReader();
                        if (readerDiyetisyen.Read())
                        {
                            string Kadi = readerDiyetisyen["KULLANICI_ADI"] != DBNull.Value ? readerDiyetisyen["KULLANICI_ADI"].ToString() : string.Empty;
                            string adi = readerDiyetisyen["ADI"] != DBNull.Value ? readerDiyetisyen["ADI"].ToString() : string.Empty;
                            string soyadi = readerDiyetisyen["SOYADI"] != DBNull.Value ? readerDiyetisyen["SOYADI"].ToString() : string.Empty;
                            string mail = readerDiyetisyen["MAIL"] != DBNull.Value ? readerDiyetisyen["MAIL"].ToString() : string.Empty;
                            string egitim = readerDiyetisyen["EGITIM"] != DBNull.Value ? readerDiyetisyen["EGITIM"].ToString() : string.Empty;
                            diyetisyenkullaniciaditxt.Text = Kadi;
                            dytadi.Text =" " + adi + " " + soyadi;
                            //dytegitim.Text = egitim;
                            dytmail.Text = mail;
                        }
                        else
                        {
                            dytadi.Text = "Kayıtlı diyetisyen yok";
                          //  dytegitim.Text = "";
                            dytmail.Text = "";
                        }

                        readerDiyetisyen.Close();
                    }
                    else
                    {
                        dytadi.Text = "Kayıtlı diyetisyen yok";
                        //dytegitim.Text = "";
                        dytmail.Text = "";
                    }
                }
                else
                {
                    dytadi.Text = "Kayıtlı diyetisyen yok";
                    //dytegitim.Text = "";
                    dytmail.Text = "";
                    readerDanisan.Close(); // Reader'ı kapat
                }
            }
            catch (Exception ex)
            {
                // Hata yönetimi
                dytadi.Text = "Hata: " + ex.Message;
            }
            finally
            {
                baglan.Close();
            }
        }


        protected void selectDietitianButton_Click(object sender, EventArgs e)
        {
            // Diyetisyen seçme butonuna tıklama işlemleri buraya eklenecek
        }

        protected void changeDietitianBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/danisan_aspx/dytdegistir.aspx");
        }
    }
}
