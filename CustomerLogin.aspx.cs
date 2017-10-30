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
    public partial class CustomerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie UserInfo = Request.Cookies["UserInfo"];
                if (UserInfo != null)
                {
                    txtuname.Text = UserInfo["username"].ToString();
                    txtpswd.Attributes.Add("value", UserInfo["password"].ToString());
                }
            }

        }



        protected void btn_login_Click(object sender, EventArgs e)
        {
            String hashpassword = PasswordClass.Hashpassword(txtpswd.Text);
            SqlConnection con = new SqlConnection("Data Source=WIN-T5M51LAKF72\\MSSQLSERVER2; Initial Catalog=BookStore; Integrated Security=true;");
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            SqlCommand cmd = new SqlCommand("select * from customer where username=@username and password=@pasword", con);
            cmd.Parameters.AddWithValue("@username", txtuname.Text);
            cmd.Parameters.AddWithValue("@pasword", hashpassword);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            if (chkremember.Checked)
            {
                HttpCookie cookie = new HttpCookie("userinfo");

                cookie["username"] = txtuname.Text;
                cookie["password"] = hashpassword;

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
                Session["username"] = txtuname.Text;
                Session["password"] = hashpassword;
                Session["Logstatus"] = true;
                Response.Redirect("customerview.aspx");
            }

            else
            {
                Response.Write("Invalid Credentials");
            }
        }


    }
}
