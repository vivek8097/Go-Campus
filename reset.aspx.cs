using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web.UI;

public partial class reset : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        var con = new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());
        var un = "";
        var pw = "";
        var cmd =
            new SqlCommand(
                "select email,password from student where email='@email' union select email, password from admin where email =@email union select email, password from campany where email =@email union select email, password from tpo where email =@email",
                con);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        con.Open();
        using (var dr = cmd.ExecuteReader())
        {
            if (dr.Read())
            {
                un = dr["email"].ToString();
                pw = dr["password"].ToString();
            }
        }
        con.Close();
        if (!string.IsNullOrEmpty(pw))
        {
            var msg = new MailMessage();
            msg.From = new MailAddress("gocmapusgo@gmail.com");
            msg.To.Add(txtemail.Text);
            msg.Subject = " Recover your Password";
            msg.Body = "Your Email-ID is:" + un + "<br/><br/>" + "Your Password is:" + pw;
            msg.IsBodyHtml = true;

            var smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            var ntwd = new NetworkCredential();
            ntwd.UserName = "gocampusgo@gmail.com"; //Your Email ID  
            ntwd.Password = "Rajesh@98200"; // Your Password  
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);
            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                "alert('Email and Password is successfully sent to your email-id');window.location='login.aspx';", true);
        }
    }
}