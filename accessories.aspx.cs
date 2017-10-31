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
    public partial class accessories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection conobj = new SqlConnection();
                conobj.ConnectionString = "data source=WIN-MQ25VDQV2DC;Initial Catalog=petsworld;Integrated Security=true";
                SqlCommand cmd = new SqlCommand("select * from Accessories", conobj);
                //cmd.Parameters.AddWithValue("@carcategory", category);
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

        protected void dlAccesories_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "BuyAccessory")
            {
                Label lblid = e.Item.FindControl("lblAccId") as Label;
                string id = lblid.Text;
                Response.Redirect("accessories details.aspx?Acc_Id=" + id);
            }
        }
    }
}