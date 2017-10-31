
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace WebApplication1
{
    public partial class Admin : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvVideo.DataSource = this.Bind();
                gvVideo.DataBind();
            }

        }
        public DataTable Bind(string Videoname = "%")
        {

            SqlConnection con = new SqlConnection("Data Source = WIN-NJSGVM20SF5; Initial Catalog =PetsWorld ; Integrated security= true");
            SqlCommand cmd = new SqlCommand("select * from Accessories" , con);

           

            if (con.State == ConnectionState.Closed)
                con.Open();

            DataTable dt = new DataTable();

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {

                dt.Load(reader);




            }
            reader.Close();
            con.Close();

            return dt;

        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text != "" && txtSearch.Text != null)
            {
                DataTable dt = new DataTable();
                dt = this.Bind(txtSearch.Text);
                if (dt.Rows.Count > 0)
                {


                    gvVideo.DataSource = this.Bind(txtSearch.Text);
                    gvVideo.DataBind();
                }
            }
        }

        protected void gvVideo_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string AccID = (gvVideo.Rows[e.RowIndex].FindControl("lblAccId") as Label).Text;




            SqlConnection con = new SqlConnection("Data Source = WIN-NJSGVM20SF5; Initial Catalog =PetsWorld ; Integrated security= true");
            //SqlCommand cmd = new SqlCommand("usp_Accessories_Delete", con);
            //cmd.CommandType = CommandType.StoredProcedure;




            //cmd.Parameters.AddWithValue("@vAcc_Name", AccName);



            //if (con.State == ConnectionState.Closed)
            //    con.Open();


            //cmd.ExecuteNonQuery();
            //gvVideo.EditIndex = -1;
            //gvVideo.DataSource = this.Bind(txtSearch.Text);
            //gvVideo.DataBind();

            GridViewRow row = (GridViewRow)gvVideo.Rows[e.RowIndex];
          // String deleteid = (Label)row.FindControl("lblAccIDd");
            con.Open();
            
            SqlCommand cmd = new SqlCommand("delete FROM Accessories where iAcc_Id=@iAcc_Id", con);
            cmd.Parameters.AddWithValue("@iAcc_Id", AccID);
            cmd.ExecuteNonQuery();
            con.Close();
            Bind();
          

        }

        protected void gvVideo_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string AccName = (gvVideo.Rows[e.RowIndex].FindControl("txtAccName") as TextBox).Text;

            string AccStock = (gvVideo.Rows[e.RowIndex].FindControl("txtInStock") as TextBox).Text;
            string AccPrice = (gvVideo.Rows[e.RowIndex].FindControl("txtAccPrice") as TextBox).Text;


            SqlConnection con = new SqlConnection("Data Source = WIN-NJSGVM20SF5; Initial Catalog =PetsWorld ; Integrated security= true");
            SqlCommand cmd = new SqlCommand("usp_Accessories_Update", con);
            cmd.CommandType = CommandType.StoredProcedure;




            cmd.Parameters.AddWithValue("@vAcc_Name", AccName);

            cmd.Parameters.AddWithValue("@mAcc_Price", AccPrice);
            cmd.Parameters.AddWithValue("@iAcc_Stock", AccStock);

            if (con.State == ConnectionState.Closed)
                con.Open();


            cmd.ExecuteNonQuery();
            gvVideo.EditIndex = -1;
            gvVideo.DataSource = this.Bind(txtSearch.Text);
            gvVideo.DataBind();


        }

        protected void gvVideo_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvVideo.EditIndex = e.NewEditIndex;
            gvVideo.DataSource = this.Bind(txtSearch.Text);
            gvVideo.DataBind();
        }

        protected void gvVideo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {

            gvVideo.EditIndex = -1;
            gvVideo.DataSource = this.Bind(txtSearch.Text);
            gvVideo.DataBind();
        }



       
    }
}