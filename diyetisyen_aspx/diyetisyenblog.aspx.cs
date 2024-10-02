using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class diyetisyenblog : System.Web.UI.Page
    {
        //SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnYayinla_Click(object sender, EventArgs e)
        {
            // Resmi kaydetmek için kullanıcının seçtiği dosyanın adını al
           // string fileName = Path.GetFileName(btnResimEkle.FileName);

            // Resmin kaydedileceği klasörün yolu
           // string uploadFolderPath = Server.MapPath("~/UploadedImages/");

            // Kullanıcının seçtiği resmi belirtilen klasöre kaydet
         //   string filePath = Path.Combine(uploadFolderPath, fileName);
           // btnResimEkle.SaveAs(filePath);

            // Resmin yolunu veritabanına kaydet
            //string resimYolu = "~/UploadedImages/" + fileName;

            string baslik = txtBaslik.Text;
            string diyetisyenAdi = txtDiyetisyenAdi.Text;
            string diyetisyenSoyadi = txtDiyetisyenSoyadi.Text;
            string icerik = txtIcerik.Text;
            string yayinTarihi = txtYayinTarihi.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO blog (BASLIK, ICERIK, TARIH, DIYETISYEN_ADI, DIYETISYEN_SOYADI) VALUES (@Baslik, @Icerik, @Tarih, @DiyetisyenAdi, @DiyetisyenSoyadi)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Baslik", baslik);
                    cmd.Parameters.AddWithValue("@Icerik", icerik);
                    cmd.Parameters.AddWithValue("@Tarih", DateTime.Parse(yayinTarihi));
                    cmd.Parameters.AddWithValue("@DiyetisyenAdi", diyetisyenAdi);
                    cmd.Parameters.AddWithValue("@DiyetisyenSoyadi", diyetisyenSoyadi);
                    //cmd.Parameters.AddWithValue("@ResimYolu", resimYolu);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            // Başarılı kaydetme işlemi sonrası kullanıcıya bir mesaj gösterebilir veya yönlendirebilirsiniz.
            Response.Write("<script>alert('Blog başarıyla kaydedildi');</script>");
        }


    }

}