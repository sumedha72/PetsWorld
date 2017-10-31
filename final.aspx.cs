using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication6
{
    public partial class final : System.Web.UI.Page
    {
        public void Bind()
        {
            SqlConnection con = new SqlConnection("Data Source=WIN-T5M51LAKF72\\MSSQLSERVER2; Initial Catalog=PetsWorld; Integrated Security=true;");
            SqlCommand cmd = new SqlCommand("select * from OrderDetails where iOrder_id=@iOrder_id", con);

            string abc = Request.QueryString["iOrderID"];
            cmd.Parameters.AddWithValue("@iOrderID", abc);
            if (con.State == ConnectionState.Closed)

                con.Open();

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
            {
                Bind();
            }
        }
    }
}