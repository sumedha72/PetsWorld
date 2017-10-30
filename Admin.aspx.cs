using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace petsworld
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection conobj = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            conobj = new SqlConnection();
            conobj.ConnectionString = "data source=WIN-MQ25VDQV2DC;Initial Catalog=petsworld;Integrated Security=true";
            cmd = new SqlCommand("usp_Accessories_Insert", conobj);
            cmd.CommandType = CommandType.StoredProcedure;
            if (conobj.State == ConnectionState.Closed)
            {
                conobj.Open();
            }
            cmd.Parameters.AddWithValue("@iAcc_Id", txtAcc_Id.Text);
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
            {
                lblmessage.Text = "accessories details successfully added";
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            conobj = new SqlConnection();
            conobj.ConnectionString = "data source=WIN-MQ25VDQV2DC;Initial Catalog=petsworld;Integrated Security=true";
            cmd = new SqlCommand("usp_Accessories_Update", conobj);
            cmd.CommandType = CommandType.StoredProcedure;
            if (conobj.State == ConnectionState.Closed)
            {
                conobj.Open();
            }
            //cmd.Parameters.AddWithValue("@iAcc_Id", txtAcc_Id.Text);
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
            {
                lblmessage.Text = "accessories details successfully updated";
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            conobj = new SqlConnection();
            conobj.ConnectionString = "data source=WIN-MQ25VDQV2DC;Initial Catalog=petsworld;Integrated Security=true";
            cmd = new SqlCommand("usp_Accessories_Delete", conobj);
            cmd.CommandType = CommandType.StoredProcedure;
            if (conobj.State == ConnectionState.Closed)
            {
                conobj.Open();
            }
            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                lblmessage.Text = "accessories details successfully deleted";
            }
        }
    }
}