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
            
        }

        protected void CustomerCart_ItemCommand(object source, DataListCommandEventArgs e)
        {
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


                    String OrderId = (e.CommandArgument).ToString().Substring(1, 3) + Session["CustId"];
                    SqlCommand cmd1;
                    cmd1 = new SqlCommand("Insert into CustomerOrder(vOrderId,cCustomerId,vBookISBN,vBookName,decBookPrice)values(@OrderId,@CustomerId,@BookISBN,@BookName,@BookPrice)", con);
                    cmd1.Parameters.AddWithValue("@OrderId", OrderId);
                    cmd1.Parameters.AddWithValue("@CustomerId", Session["CustId"]);
                    cmd1.Parameters.AddWithValue("@BookISBN", e.CommandArgument);
                    cmd1.Parameters.AddWithValue("@BookName", rdr["vBookName"].ToString());
                    cmd1.Parameters.AddWithValue("@BookPrice", rdr["decBookPrice"].ToString());


                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    rdr = cmd1.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        rdr.Read();
                        SqlCommand cmd2;
                        cmd2 = new SqlCommand("Delete from CustomerCart where vBookISBN=@BookId", con);
                        cmd2.Parameters.AddWithValue("@BookId", e.CommandArgument);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        cmd.ExecuteNonQuery();
                        Response.Redirect("UserCart.aspx");
                        //rdr.Read();
                        //DataTable dt = new DataTable();
                        //dt.Load(rdr);

                    }
                }

            }
        }
}
}