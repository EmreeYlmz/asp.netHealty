using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.danisan_aspx
{
    public partial class dytdegistir : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListDiyetisyenler();
            }
        }

        protected void ListDiyetisyenler()
        {
            try
            {
                baglan.Open();
                string query = "SELECT [diyetisyen_id], [KULLANICI_ADI], [ADI], [SOYADI], [MAIL], [EGITIM] FROM [dbo].[diyetisyen]";
                SqlCommand cmd = new SqlCommand(query, baglan);
                SqlDataReader reader = cmd.ExecuteReader();

                rptDiyetisyenler.DataSource = reader;
                rptDiyetisyenler.DataBind();

                reader.Close();
            }
            catch (Exception ex)
            {
                // Hata yönetimi
            }
            finally
            {
                baglan.Close();
            }
        }


        protected void SelectDiyetisyen_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int secilenDiyetisyenId = Convert.ToInt32(btn.CommandArgument);

            try
            {
                baglan.Open();
                string kullaniciAdi = Session["KULLANICI_ADI"].ToString();

                // Danışanın tablosundaki diyetisyen bilgilerini güncelle
                string updateQueryd = "UPDATE danisan SET DIYETISYEN_ID = @diyetisyenId, DIYETISYEN_ADI = (SELECT KULLANICI_ADI FROM diyetisyen WHERE diyetisyen_id = @diyetisyenId) WHERE KULLANICI_ADI = @kullaniciAdi";
                SqlCommand cmdUpdate = new SqlCommand(updateQueryd, baglan);
                cmdUpdate.Parameters.AddWithValue("@diyetisyenId", secilenDiyetisyenId);
                cmdUpdate.Parameters.AddWithValue("@kullaniciAdi", kullaniciAdi);
                cmdUpdate.ExecuteNonQuery();

                // Danışanın tablosundaki diyetisyen bilgilerini güncelle
                string updateQuery = "UPDATE danisan SET DIYETISYEN_ID = @diyetisyenId, DIYETISYEN_ADI = (SELECT KULLANICI_ADI FROM diyetisyen WHERE diyetisyen_id = @diyetisyenId) WHERE KULLANICI_ADI = @kullaniciAdi";
                SqlCommand cmdUpdated = new SqlCommand(updateQuery, baglan);
                cmdUpdated.Parameters.AddWithValue("@diyetisyenId", secilenDiyetisyenId);
                cmdUpdated.Parameters.AddWithValue("@kullaniciAdi", kullaniciAdi);
                cmdUpdated.ExecuteNonQuery();

                // Uyarı mesajı
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Diyetisyen seçimi başarıyla gerçekleştirildi.'); window.location = '/danisan_aspx/DanisanDiyetisyenim.aspx';", true);
            }
            catch (Exception ex)
            {
                // Hata yönetimi
            }
            finally
            {
                baglan.Close();
            }
        }



    }
}
