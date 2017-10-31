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
    public partial class AdminAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=WIN-NJSGVM20SF5;Initial Catalog=PetsWorld;Integrated Security=true");
                
              SqlCommand  cmd = new SqlCommand("usp_Accessories_Insert", con);
                cmd.CommandType = CommandType.StoredProcedure;
                if (con.State == ConnectionState.Closed)
                
                    con.Open();
                

                cmd.Parameters.AddWithValue("@vAcc_Name", txtAcc_Name.Text);
                cmd.Parameters.AddWithValue("@mAcc_Price", txtAcc_Price.Text);
                cmd.Parameters.AddWithValue("@iAcc_Stock", txtAcc_Stock.Text);
                cmd.Parameters.Add(new SqlParameter("@imgAcc_Image", SqlDbType.VarBinary));
                if (txtAcc_Img.PostedFile.FileName != "" && txtAcc_Img.PostedFile.FileName != null)
                {
                    int len = txtAcc_Img.PostedFile.ContentLength;
                    byte[] img = new byte[len];
                    txtAcc_Img.PostedFile.InputStream.Read(img, 0, len);
                    cmd.Parameters["@imgAcc_Image"].Value = img;
                }
                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                
                    lblmessage.Text = "Accessories details successfully added";
            
        }
    }
}