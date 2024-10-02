using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace WebApplication1
{
    public partial class giris : System.Web.UI.Page
    {
        /* SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-DLAFDTR\\SQLEXPRESS;Initial Catalog=deneme;Integrated Security=True");*/
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayit/diyetisyenkayit.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayit/danisankayit.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Diyetisyen Giriş kısmı

            string kullaniciAdi = txtUsernameDiyetisyen.Text;
            string sifre = txtPasswordDiyetisyen.Text;

            string adi_ = "";
            string soyadi_ = "";
            string sifre_ = "";
            string mail_ = "";


            using (SqlCommand komut = new SqlCommand("SELECT * FROM diyetisyen WHERE KULLANICI_ADI=@kadi AND SIFRE=@sifre", baglan))
            { 
                komut.Parameters.AddWithValue("@kadi", kullaniciAdi);
                komut.Parameters.AddWithValue("@sifre", sifre);

                using (SqlDataAdapter da = new SqlDataAdapter(komut))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);


                    if (dt.Rows.Count > 0)
                    {
                        // Kullanıcı adı ve şifre doğru, oturum oluşturabilir ve yönlendirebilirsiniz.
                        kullaniciAdi = dt.Rows[0]["KULLANICI_ADI"].ToString();
                        Session.Add("kadi", kullaniciAdi);
                        adi_ = dt.Rows[0]["ADI"].ToString();
                        Session.Add("adi", adi_);
                        soyadi_ = dt.Rows[0]["SOYADI"].ToString();
                        Session.Add("soyadi", soyadi_);
                        mail_ = dt.Rows[0]["MAIL"].ToString();
                        Session.Add("mail", mail_);
                        sifre_ = dt.Rows[0]["EGITIM"].ToString();
                        Session.Add("egitim", sifre_);

                        Response.Redirect("diyetisyen_aspx/DiyetisyenAnasayfa.aspx");
                    }
                    else
                    {
                        Label2.Text = "Kullanıcı girişi hatalı";
                    }
                }
            }



        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            string kullaniciAdi = txtUsernameDanisan.Text;
            string sifre = txtPasswordDanisan.Text;

            string sonuc = "";
            string adi_ = "";
            string soyadi_ = "";
            string sifre_ = "";
            string mail_ = "";

            using (SqlCommand komut = new SqlCommand("SELECT * FROM danisan WHERE KULLANICI_ADI=@KULLANICI_ADI AND SIFRE=@sifre", baglan))
            {
                komut.Parameters.AddWithValue("@KULLANICI_ADI", kullaniciAdi);
                komut.Parameters.AddWithValue("@sifre", sifre);

                using (SqlDataAdapter da = new SqlDataAdapter(komut))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        // Kullanıcı adı ve şifre doğru, oturum oluşturabilir ve yönlendirebilirsiniz.
                        kullaniciAdi = dt.Rows[0]["KULLANICI_ADI"].ToString();
                        Session.Add("KULLANICI_ADI", kullaniciAdi);
                        adi_ = dt.Rows[0]["ADI"].ToString();
                        Session.Add("ADI", adi_);
                        soyadi_ = dt.Rows[0]["SOYADI"].ToString();
                        Session.Add("SOYADI", soyadi_);
                        mail_ = dt.Rows[0]["MAIL"].ToString();
                        Session.Add("MAIL", mail_);
                        sifre_ = dt.Rows[0]["SIFRE"].ToString();
                        Session.Add("SIFRE", sifre_);
                        Response.Redirect("danisan_aspx/DanisanAnasayfa.aspx");
                       // Response.Write("Hoşgeldiniz");
                    }
                    else
                    {
                        Label1.Text = "Kullanıcı girişi hatalı";
                    }
                }
            }

        }
    }
}