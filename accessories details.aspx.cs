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
    public partial class accessories_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string iAcc_Id = Request.QueryString["Acc_Id"].ToString();
                SqlConnection conobj = new SqlConnection();
                conobj.ConnectionString = "data source=WIN-MQ25VDQV2DC;Initial Catalog=petsworld;Integrated Security=true";
                SqlCommand cmd = new SqlCommand("select * from Accessories where iAcc_Id=@iAcc_Id", conobj);
                cmd.Parameters.AddWithValue("@iAcc_Id", iAcc_Id);
                conobj.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    dlacc.DataSource = dt;
                    dlacc.DataBind();

                }
                conobj.Close();
            }
        }

        protected void dlacc_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName=="BuyAccessory")
            {
                Label lblname = e.Item.FindControl("lblAccName") as Label;
                string name = lblname.Text;
                int quantity = Convert.ToInt32((e.Item.FindControl("ddlquantity") as DropDownList).SelectedItem.Text);
                Label lblprice = e.Item.FindControl("lblAccPrice") as Label;
                double price = Convert.ToDouble(lblprice.Text);
                SqlConnection conobj = new SqlConnection();
                conobj.ConnectionString = "data source=WIN-MQ25VDQV2DC;Initial Catalog=petsworld;Integrated Security=true";
                SqlCommand cmd = new SqlCommand("usp_Cart_insert", conobj);
                cmd.CommandType = CommandType.StoredProcedure;
                if (conobj.State == ConnectionState.Closed)
                {
                    conobj.Open();
                }
                cmd.Parameters.AddWithValue("@vCart_Name",name);
                cmd.Parameters.AddWithValue("@iCart_Quantity", quantity);
                cmd.Parameters.AddWithValue("@mCart_Price",price);
                int res = cmd.ExecuteNonQuery();
                Response.Redirect("cart.aspx");
            }
        }
    }
}