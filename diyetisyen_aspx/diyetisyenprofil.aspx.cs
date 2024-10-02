using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class diyetisyenprofil : System.Web.UI.Page
    {
        //SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);
        SqlConnection baglan2 = new SqlConnection(ConfigurationManager.ConnectionStrings["veritabanibaglanti"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adi"] == null)
                Response.Redirect("~/giris.aspx");
            
            else
            {
                txtName.Text = Session["adi"].ToString();
                /*guncelsoyad.Text = Session["soyadi"].ToString();
                mailguncel.Text = Session["mail"].ToString();
                TextBox1.Text = Session["egitim"].ToString();
                */


            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("UPDATE diyetisyen SET SOYADI=@soyadi,YAS=@yas,MAIL=@mail, EGITIM=@egitim WHERE  ADI=@adi", baglan2);
            baglan2.Open();
            komut.Parameters.AddWithValue("@adi", SqlDbType.NVarChar).Value = txtName.Text;
            komut.Parameters.AddWithValue("@soyadi", SqlDbType.NVarChar).Value = txtSurname.Text;
            komut.Parameters.AddWithValue("@yas", SqlDbType.NVarChar).Value = txtAge.Text;
            komut.Parameters.AddWithValue("@mail", SqlDbType.NVarChar).Value = txtEmail.Text;
            komut.Parameters.AddWithValue("@egitim", SqlDbType.NVarChar).Value = txtEducation.Text;

            komut.ExecuteNonQuery();
            baglan2.Close();
        }
    }
}