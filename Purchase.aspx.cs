using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home
{

    public partial class DisplayFullDetail : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        string h = null;

        public void Bind()
        {
            h = Request.QueryString["iAnimalId"];
            con = new SqlConnection("Data Source=AJ5; Initial Catalog=PetsWorld; Integrated Security=true;");
            cmd = new SqlCommand("select * from Animal where iAnimalId=@iAnimalId", con);
            cmd.Parameters.AddWithValue("@iAnimalId", h);


            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(reader);
                purchaseAnimal.DataSource = dt;
                purchaseAnimal.DataBind();
            }
            reader.Close();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Bind();

        }

        protected void purchaseAnimal_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Next")
            {
                Server.Transfer("Cart.aspx?iAnimalId=" + e.CommandArgument);

            }

            if (e.CommandName == "Select")
            {
                int quantity = Convert.ToInt32((e.Item.FindControl("ddlAnimalQuant") as DropDownList).SelectedItem.Text);
                int total = (quantity * (Convert.ToInt32(e.CommandArgument)));
                lblmsg.Text = "Total amount is:" + total;
            }
        }

        
           
        
    }
}