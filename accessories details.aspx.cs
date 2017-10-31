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
            if(e.CommandName="BuyAccessory")
            string iAcc_Id = Request.QueryString["Acc_Id"].ToString();
            SqlConnection conobj = new SqlConnection();
            conobj.ConnectionString = "data source=WIN-MQ25VDQV2DC;Initial Catalog=petsworld;Integrated Security=true";
            SqlCommand cmd = new SqlCommand("select * from Accessories where iAcc_Id=@iAcc_Id", conobj);
            cmd.Parameters.AddWithValue("@iAcc_Id", e.CommandArgument);
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

        protected void btnselect_Click(object sender, EventArgs e)
        {

        }

        protected void dlacc_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }
    }
}