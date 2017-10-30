using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using Book_Store.App_Code;


    namespace Book_Store
    {
        public partial class registration : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {

            }

            protected void btnregister_Click(object sender, EventArgs e)
            {
                string hashpassword = PasswordClass.Hashpassword(txtpswd.Text);
                SqlConnection con = new SqlConnection("Data Source=WIN-T5M51LAKF72\\MSSQLSERVER2; Initial Catalog=BookStore; Integrated Security=true;");
                SqlCommand cmd = new SqlCommand("uspcustinsert", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@cname", txtcname.Text);
                cmd.Parameters.AddWithValue("@username", Textuname.Text);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@phone", txtphn.Text);
                cmd.Parameters.AddWithValue("@gender", ddlgender.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@dateofbirth", Convert.ToDateTime(txtdob.Text));
                cmd.Parameters.AddWithValue("@pasword", hashpassword);


                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                int res = cmd.ExecuteNonQuery();

                if (res > 0)
                {
                    
                    Response.Redirect("CustomerLogin.aspx");

                }
            }
        }
    }
