using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class AnimalDisplay : System.Web.UI.Page
    {
        public void Bind()
        {
            SqlConnection con = new SqlConnection("Data Source=WIN-T5M51LAKF72\\MSSQLSERVER2; Initial Catalog=BookStore; Integrated Security=true;");
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

        }
    }
}