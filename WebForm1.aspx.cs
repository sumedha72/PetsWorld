using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;//for background worker class
using Microsoft.VisualBasic;//for interacation message box
using System.Net;
using System.Net.Mail;

namespace WebApplication7
{
    public partial class WebForm1 : System.Web.UI.Page
    {
         DateTime hours;
    BackgroundWorker bw = new BackgroundWorker();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            hours = Convert.ToDateTime(DateTime.Now.TimeOfDay.ToString());
            hours = hours.AddMinutes(1);
            Session["maxIssue"] = hours;
            Response.Redirect(Session["maxIssue"].ToString());
            Response.Redirect("Sesssion Saved Time");
        }
    }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.Enabled = false;
            Timer1.Enabled = true;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
             bw.DoWork += new DoWorkEventHandler(bw_DoWork);
        bw.WorkerReportsProgress = false;
        bw.WorkerSupportsCancellation = true;
        bw.RunWorkerCompleted += new RunWorkerCompletedEventHandler(bw_RunWorkerCompleted);
        bw.RunWorkerAsync();
    }
    public void bw_DoWork(object sender, DoWorkEventArgs e)
    {
        Session.Timeout = 20;
        DateTime d = Convert.ToDateTime(Session["maxIssue"].ToString());
        //Interaction.MsgBox("D value is :" + d, MsgBoxStyle.Information, "Date Value");
        if (d <= DateTime.Now)
        {
            Timer1.Enabled = false;//for stopping the timer once the mail is sent.
            Response.Redirect("Mail Sent"+ DateTime.Now.ToString());
            //Interaction.MsgBox("Mail Sent" + DateTime.Now.ToString(), MsgBoxStyle.Information, "Mail Sent");
            SendMail();
        }
        }

          public void SendMail()
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("shreya.das.495@gmail.com");
        msg.To.Add("sumedha72.95@gmail.com");
        msg.Body = "Testing the automatic mail";
        msg.IsBodyHtml = true;
        msg.Subject = "Movie Data";
        SmtpClient smt = new SmtpClient("smtp.gmail.com");
        smt.Port = 587;
        smt.Credentials = new NetworkCredential("your login account", "your word");
        smt.EnableSsl = true;
        smt.Send(msg);
        string script = "<script>alert('Mail Sent Successfully');self.close();</script>";
        this.ClientScript.RegisterClientScriptBlock(this.GetType(), "sendMail", script);
    }
          public static void bw_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
    {
    }
    }
}