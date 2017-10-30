using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace petsworld
{
    /// <summary>
    /// Summary description for AccessoriesImageHandler
    /// </summary>
    public class AccessoriesImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string iAcc_Id = context.Request.QueryString["iAcc_Id"] as string;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["petsworld"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select imgAcc_Image from Accessories where iAcc_Id=@iAcc_Id", con);
            cmd.Parameters.AddWithValue("@iAcc_Id", iAcc_Id);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.HasRows)
            {
                rdr.Read();
                context.Response.BinaryWrite((byte[])rdr["imgAcc_Image"]);

            }
            rdr.Close();
            con.Close();
            context.Response.End();
        }


        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}