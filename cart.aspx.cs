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
    public partial class cart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            string custid=Session["UserID"].ToString();
            con = new SqlConnection("data source=WIN-MQ25VDQV2DC;Initial Catalog=petsworld;Integrated Security=true");
            cmd = new SqlCommand("select * from Cart where vCust_Id=@vCust_Id", con);
            cmd.Parameters.AddWithValue("@vCust_Id", );
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(reader);
                dlcart.DataSource = dt;
                dlcart.DataBind();

            }
            con.Close();
        }

        protected void CustomerCart_ItemCommand(object source, DataListCommandEventArgs e)
        {
            string custid = Session["UserID"].ToString();
            if (e.CommandName == "Delete")
            {
                con = new SqlConnection("data source=WIN-MQ25VDQV2DC;Initial Catalog=petsworld;Integrated Security=true");
                cmd = new SqlCommand("delete from cart where iCart_Id=@iCart_Id ", con);
                cmd.Parameters.AddWithValue("@iCart_Id", e.CommandArgument);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                {
                    Response.Write("<script>alert('Deleted')</script>");
                    Response.Redirect("Cart.aspx");
                }
            }
            if (e.CommandName == "Buy")
            {
                con = new SqlConnection("Data Source=WIN-0PN5D2D4NLM\\MSSQLSERVER1;Initial Catalog=Bookwaale;Integrated Security=true;multipleactiveresultsets=true");
                cmd = new SqlCommand("select * from Cart where iCart_Id=@iCart_Id ", con);
                cmd.Parameters.AddWithValue("@iCart_Id", e.CommandArgument);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlDataReader rdr;
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    rdr.Read();
                    //String OrderId = (e.CommandArgument).ToString().Substring(1, 3) + Session["CustId"];
                    SqlCommand cmd1;
                    cmd1 = new SqlCommand("Insert into OrderDetails(vOrderName,iOrderQuantity,iOrderPrice,vCust_Id)values(@vOrderName,@iOrderQuantity,@iOrderPrice,@vCust_Id)", con);
                    cmd1.Parameters.AddWithValue("@vOrderName", rdr["vCart_Name"].ToString());
                    cmd1.Parameters.AddWithValue("@iOrderQuantity", rdr["iCart_Quantity"].ToString());
                    cmd1.Parameters.AddWithValue("@iOrderPrice", rdr["mCart_Price"].ToString());
                    cmd1.Parameters.AddWithValue("@vCust_Id", Session["CustId"]);


                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    rdr = cmd1.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        rdr.Read();
                        SqlCommand cmd2;
                        cmd2 = new SqlCommand("Delete from Cart where iCart_Id=@iCart_Id", con);
                        cmd2.Parameters.AddWithValue("@iCart_Id", e.CommandArgument);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        cmd2.ExecuteNonQuery();
                        Response.Redirect("cart.aspx");
                    }
                }

            }
        }
    }
}