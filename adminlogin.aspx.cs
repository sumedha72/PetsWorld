using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Book_Store
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void cmdlogin_Click(object sender, EventArgs e)
        {
           
            if(txtuname.Text=="admin" && txtpswd.Text=="admin")
                    Response.Redirect("adminwork.aspx");
                }
            }
        
    }
