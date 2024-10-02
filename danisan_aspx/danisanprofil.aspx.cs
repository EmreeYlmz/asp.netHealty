using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace WebApplication1
{
    public partial class danisanprofil : System.Web.UI.Page
    {
         SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);
        //SqlConnection baglan = new SqlConnection("Data Source=DESKTOP-DLAFDTR\\SQLEXPRESS;Initial Catalog=deneme;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["ADI"] == null)
                Response.Redirect("~/giris.aspx");
            else
            {
                txtFirstName.Text = Session["ADI"].ToString();
               /* soyaditext.Text = Session["SOYADI"].ToString();
                txtEmail.Text = Session["MAIL"].ToString();
                txtPassword.Text = Session["SIFRE"].ToString();
               */


            }

           
        }

        protected void btnSavePersonal_Click(object sender, EventArgs e)
        {


            SqlCommand komut2 = new SqlCommand("UPDATE danisan SET SOYADI=@dsoyadi, MAIL=@dmail, SIFRE=@dsifre WHERE  ADI=@dadi", baglan);
            baglan.Open();


            komut2.Parameters.AddWithValue("@dadi", SqlDbType.NVarChar).Value = txtFirstName.Text;
            komut2.Parameters.AddWithValue("dsoyadi", SqlDbType.NVarChar).Value = soyaditext.Text;
            komut2.Parameters.AddWithValue("dmail", SqlDbType.NVarChar).Value = txtEmail.Text;
            komut2.Parameters.AddWithValue("dsifre", SqlDbType.NVarChar).Value = txtPassword.Text;
            komut2.ExecuteNonQuery();
            baglan.Close();
           

           
            

        }

        protected void btnSavePhysical_Click(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("UPDATE danisan SET CINSIYET=@cinsiyet, BOY=@boy, KILO=@kilo, YAS=@yas, DIYET_BASLAMA_TARIHI=@diyetbastrh WHERE  ADI=@adi", baglan);

            baglan.Open();


            komut.Parameters.AddWithValue("@adi", SqlDbType.NVarChar).Value = txtFirstName.Text;
            komut.Parameters.AddWithValue("@cinsiyet", SqlDbType.NVarChar).Value = ddlGender.Text;
            komut.Parameters.AddWithValue("@boy", SqlDbType.NVarChar).Value = txtHeight.Text;
            komut.Parameters.AddWithValue("@kilo", SqlDbType.NVarChar).Value = txtWeight.Text;
            komut.Parameters.AddWithValue("@yas", SqlDbType.NVarChar).Value = txtAge.Text;
            komut.Parameters.AddWithValue("@diyetbastrh", SqlDbType.NVarChar).Value = txtDietStartDate.Text;
            komut.ExecuteNonQuery();
            baglan.Close();




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/giris.aspx");    
        }
    }
}