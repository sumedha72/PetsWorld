using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string iAnimalId = context.Request.QueryString["AnimalID"] as string;
            SqlConnection con = new SqlConnection("Data Source = WIN-NJSGVM20SF5; Initial Catalog =PetsWorld ; Integrated security= true");
            SqlCommand cmd = new SqlCommand("select varAnimalImage from Animal where iAnimalId=@iAnimalId", con);
            cmd.Parameters.AddWithValue("@iAnimalId",iAnimalId);

            if (con.State == ConnectionState.Closed)

                con.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                context.Response.BinaryWrite((byte[])reader["varAnimalImage"]);
            }

            reader.Close();
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