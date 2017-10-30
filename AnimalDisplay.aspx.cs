using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class AnimalDisplay : System.Web.UI.Page
    {
        public void Bind()
        {
            SqlConnection con = new SqlConnection("Data Source=WIN-NJSGVM20SF5; Initial Catalog=PetsWorld; Integrated Security=true;");
            SqlCommand cmd = new SqlCommand("select * from Animal", con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                DataTable dt = new DataTable();
                dt.Load(reader);
                dlanimals.DataSource = dt;
                dlanimals.DataBind();
            }
            reader.Close();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Bind();

        }

        protected void dlanimals_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Purchase")
            {
                Server.Transfer("Purchase.aspx?Ac_ID=" + e.CommandArgument);




            }
        }
    }
}