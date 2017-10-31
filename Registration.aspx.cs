using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.AppCode;

namespace WebApplication1
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
                  string hashpassword = Class1.Hashpassword(txtPassword.Text);
                  SqlConnection con = new SqlConnection("Data Source=WIN-NJSGVM20SF5; Initial Catalog=PetsWorld; Integrated Security=true;");
                  SqlCommand cmd = new SqlCommand("usp_Customer_Add", con);
                  cmd.CommandType = CommandType.StoredProcedure;
                  cmd.Parameters.AddWithValue("@vCust_Name",txtCustName.Text);
                  cmd.Parameters.AddWithValue("@vCust_Address",txtAddress.Text);
                  cmd.Parameters.AddWithValue("@vCust_Email",txtEmail.Text);
                  cmd.Parameters.AddWithValue("@vCust_Phone", txtPhone.Text);
                  cmd.Parameters.AddWithValue("@vCust_Gender", ddlGender.SelectedItem.Text);
                  cmd.Parameters.AddWithValue("@dCust_DOB ", Convert.ToDateTime(txtdob.Text));
                  cmd.Parameters.AddWithValue("@vCust_Password", hashpassword);
  
  
                  if (con.State == ConnectionState.Closed)
                  {
                      con.Open();
                  }
  
                  int res = cmd.ExecuteNonQuery();

                  if (res > 0)
                      lblMessage.Text = "Registration Successful";

                      //Response.Redirect("CustomerLogin.aspx");
                  else
                      lblMessage.Text = "Email ID already exists";
                 
        }
        }
    }
