using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SellerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source = WIN-NJSGVM20SF5; Initial Catalog =PetsWorld ; Integrated security= true");
            SqlCommand cmd = new SqlCommand("usp_Admin_Check_Add", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@vAnimalCategory", ddlCategory.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@vAnimalColor", txtColor.Text);
            cmd.Parameters.AddWithValue("@vAnimalSex", ddlSex.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@iAnimalAge", txtAge.Text);
            cmd.Parameters.AddWithValue("@iAnimalStock", txtQuantity.Text);
            cmd.Parameters.AddWithValue("@vAnimalHeight", txtHeight.Text);
            cmd.Parameters.AddWithValue("@vAnimalWeight", txtWeight.Text);
            cmd.Parameters.AddWithValue("@vAnimalName", txtAnimalName.Text);
            cmd.Parameters.AddWithValue("@vAnimalPrice", txtPrice.Text);
            cmd.Parameters.AddWithValue("@vSellerName", txtSellerName.Text);
            cmd.Parameters.AddWithValue("@vSellerEmail", txtEmailId.Text);
            cmd.Parameters.AddWithValue("@vSellerAddress", txtSellerAddress.Text);
            cmd.Parameters.AddWithValue("vSellerPhone", txtSellerPhone.Text);

            cmd.Parameters.Add(new SqlParameter("@varAnimalImage", SqlDbType.VarBinary));

            if (imgPicture.PostedFile.FileName != "" && imgPicture.PostedFile.FileName != null)
            {
                int len = imgPicture.PostedFile.ContentLength;
                byte[] img = new byte[len];
                imgPicture.PostedFile.InputStream.Read(img, 0, len);
                cmd.Parameters["@varAnimalImage"].Value = img;


            }

           

            if (con.State == ConnectionState.Closed)

                con.Open();

            int res = cmd.ExecuteNonQuery();
            if (res > 0)

                lblMessage.Text = "Animal details uploaded for Admin Check";
        }
    }
}