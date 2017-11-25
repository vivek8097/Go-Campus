using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Web.UI;

public partial class addnewuser : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    public static string CreateRandomPassword(int PasswordLength)
    {
        var _allowedChars = "0123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ";
        var randNum = new Random();
        var chars = new char[PasswordLength];
        var allowedCharCount = _allowedChars.Length;
        for (var i = 0; i < PasswordLength; i++)
        {
            chars[i] = _allowedChars[(int) (_allowedChars.Length*randNum.NextDouble())];
        }
        return new string(chars);
    }

    protected void btngenerate_Click(object sender, EventArgs e)
    {
        txtpassword.Text = CreateRandomPassword(8);
    }


    protected void btnadd_Click(object sender, EventArgs e)
    {
        try
        {
            var utype = ddutype.SelectedIndex.ToString();

            con.Open();
            var cmd =
                new SqlCommand(
                    "select email from student where email=@email union select email from admin where email =@email union select email from campany where email =@email union select email from tpo where email =@email",
                    con);

            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            SqlDataReader dr = null;
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                    "alert('Email Already Exits');window.location='addnewuser.aspx';", true);
            }
            else
            {
                if (utype == "0")
                {
                    dr.Close();
                    var insertquery = "INSERT INTO [admin] (email,password,type) values(@email,@password,@type)";
                    var cmd1 = new SqlCommand(insertquery, con);
                    cmd1.Parameters.AddWithValue("@email", txtemail.Text);
                    cmd1.Parameters.AddWithValue("@password", txtpassword.Text);
                    cmd1.Parameters.AddWithValue("@type", utype);
                    cmd1.ExecuteNonQuery();

                    //executing query

                    var un = "";
                    var pw = "";
                    var cmd2 = new SqlCommand("select email,password from [admin] where email='" + txtemail.Text + "'",
                        con);

                    using (var dr1 = cmd2.ExecuteReader())
                    {
                        if (dr1.Read())
                        {
                            un = dr1["email"].ToString();
                            pw = dr1["password"].ToString();
                            dr1.Close();
                        }
                    }
                    con.Close();

                    if (!string.IsNullOrEmpty(pw))
                    {
                        var msg = new MailMessage();
                        msg.From = new MailAddress("gocmapusgo@gmail.com");
                        msg.To.Add(txtemail.Text);
                        msg.Subject = " Recover your Password";
                        msg.Body = "Your Email is:" + un + "<br/><br/>" + "Your Password is:" + pw;
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
                            "alert('Insert ans sent Successfully');window.location='addnewuser.aspx';", true);
                    }
                }
                else if (utype == "1")
                {
                    dr.Close();
                    var insertquery = "INSERT INTO [campany] (email,password,type) values(@email,@password,@type)";
                    var cmd1 = new SqlCommand(insertquery, con);
                    cmd1.Parameters.AddWithValue("@email", txtemail.Text);
                    cmd1.Parameters.AddWithValue("@password", txtpassword.Text);
                    cmd1.Parameters.AddWithValue("@type", utype);
                    cmd1.ExecuteNonQuery();

                    //executing query

                    var un = "";
                    var pw = "";
                    var cmd2 = new SqlCommand(
                        "select email,password from [campany] where email='" + txtemail.Text + "'", con);

                    using (var dr1 = cmd2.ExecuteReader())
                    {
                        if (dr1.Read())
                        {
                            un = dr1["email"].ToString();
                            pw = dr1["password"].ToString();
                            dr1.Close();
                        }
                    }
                    con.Close();

                    if (!string.IsNullOrEmpty(pw))
                    {
                        var msg = new MailMessage();
                        msg.From = new MailAddress("gocmapusgo@gmail.com");
                        msg.To.Add(txtemail.Text);
                        msg.Subject = " Recover your Password";
                        msg.Body = "Your Email is:" + un + "<br/><br/>" + "Your Password is:" + pw;
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
                            "alert('Insert ans sent Successfully');window.location='addnewuser.aspx';", true);
                    }
                }
                else if (utype == "2")
                {
                    dr.Close();
                    var insertquery = "INSERT INTO [student] (email,password,type) values(@email,@password,@type)";
                    var cmd1 = new SqlCommand(insertquery, con);
                    cmd1.Parameters.AddWithValue("@email", txtemail.Text);
                    cmd1.Parameters.AddWithValue("@password", txtpassword.Text);
                    cmd1.Parameters.AddWithValue("@type", utype);
                    cmd1.ExecuteNonQuery();

                    //executing query

                    var un = "";
                    var pw = "";
                    var cmd2 = new SqlCommand(
                        "select email,password from [student] where email='" + txtemail.Text + "'", con);

                    using (var dr1 = cmd2.ExecuteReader())
                    {
                        if (dr1.Read())
                        {
                            un = dr1["email"].ToString();
                            pw = dr1["password"].ToString();
                            dr1.Close();
                        }
                    }
                    con.Close();

                    if (!string.IsNullOrEmpty(pw))
                    {
                        var msg = new MailMessage();
                        msg.From = new MailAddress("gocmapusgo@gmail.com");
                        msg.To.Add(txtemail.Text);
                        msg.Subject = " Recover your Password";
                        msg.Body = "Your Email is:" + un + "<br/><br/>" + "Your Password is:" + pw;
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
                            "alert('Insert ans sent Successfully');window.location='addnewuser.aspx';", true);
                    }
                }
                if (utype == "3")
                {
                    dr.Close();
                    var insertquery = "INSERT INTO [top] (email,password,type) values(@email,@password,@type)";
                    var cmd1 = new SqlCommand(insertquery, con);
                    cmd1.Parameters.AddWithValue("@email", txtemail.Text);
                    cmd1.Parameters.AddWithValue("@password", txtpassword.Text);
                    cmd1.Parameters.AddWithValue("@type", utype);
                    cmd1.ExecuteNonQuery();

                    //executing query

                    var un = "";
                    var pw = "";
                    var cmd2 = new SqlCommand("select email,password from [tpo] where email='" + txtemail.Text + "'",
                        con);

                    using (var dr1 = cmd2.ExecuteReader())
                    {
                        if (dr1.Read())
                        {
                            un = dr1["email"].ToString();
                            pw = dr1["password"].ToString();
                            dr1.Close();
                        }
                    }
                    con.Close();

                    if (!string.IsNullOrEmpty(pw))
                    {
                        var msg = new MailMessage();
                        msg.From = new MailAddress("gocmapusgo@gmail.com");
                        msg.To.Add(txtemail.Text);
                        msg.Subject = " Recover your Password";
                        msg.Body = "Your Email is:" + un + "<br/><br/>" + "Your Password is:" + pw;
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
                            "alert('Insert ans sent Successfully');window.location='addnewuser.aspx';", true);
                    }
                }
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }
    }
}