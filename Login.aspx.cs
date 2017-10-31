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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie UserInfo = Request.Cookies["UserInfo"];
                if (UserInfo != null)
                {
                    txtEmail.Text = UserInfo["vCust_Email"].ToString();
                    txtPassword.Attributes.Add("value", UserInfo["vCust_Password"].ToString());
                }
            }


        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String hashpassword = Class1.Hashpassword(txtPassword.Text);
            SqlConnection con = new SqlConnection("Data Source=WIN-NJSGVM20SF5; Initial Catalog=PetsWorld; Integrated Security=true;");
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from customer where vCust_Email=@vCust_Email and vCust_Password=@vCust_Password", con);
            cmd.Parameters.AddWithValue("@vCust_Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@vCust_Password", hashpassword);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            if (chkRemember.Checked)
            {
                HttpCookie cookie = new HttpCookie("userinfo");

                cookie["vCust_Email"] = txtEmail.Text;
                cookie["vCust_Password"] = hashpassword;

                cookie.Expires = DateTime.Now.AddDays(7);
                Response.Cookies.Add(cookie);
            }
            else
            {
                HttpCookie cookie = new HttpCookie("userinfo");
                if (cookie != null)
                {
                    cookie.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(cookie);
                }
            }
            if (dt.Rows.Count > 0)
            {
                Session["vCust_Email"] = txtEmail.Text;
                Session["vCust_Password"] = hashpassword;
                Session["Logstatus"] = true;
                //Response.Redirect("customerview.aspx");
                lblMessage.Text = "Login Succesfull";
            }

            else

                lblMessage.Text = "Invalid Credentials";

        }
    }
}
