using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class userlist : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            con.Open();
            var com = new SqlCommand(@"SELECT * from [student];", con);
            SqlDataReader rd = null;
            rd = com.ExecuteReader();

            while (rd.Read())
            {
                var action = "";

                action += "<a href=\"studentdetail.aspx?email=" + rd.GetValue(13) +
                          "\"><i class=\"glyphicon glyphicon-search\"></i></span></a>";
                action += "<a href=\"add_selected_student.aspx?email=" + rd.GetValue(13) +
                          "\"><i class=\"glyphicon glyphicon-plus-sign\"></i></span></a>";
                Literal1.Text += @"<tr><td>" + rd.GetValue(1) + "\t" + rd.GetValue(2) + "\t" + rd.GetValue(3) +
                                 "</td><td>" + rd.GetValue(6) + "</td><td>" + rd.GetValue(7) + "</td><td>" +
                                 rd.GetValue(13) + "</td><td>" + rd.GetValue(8) + "</td><td class=\"toolbar\">" + action +
                                 "</td></tr>";
            }
            rd.Close();
            con.Close();
        }
        else
        {
            Response.Redirect("login.aspx?alert=Kindly Login to access this page.");
        }
    }
}