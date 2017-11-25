using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class selected_student : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            con.Open();
            var com =
                new SqlCommand(
                    @"SELECT fname,mname,lname,department,package from [student] where campany1='" +
                    Session["campany_name"] + "' or campany2='" + Session["campany_name"] + "' or campany3='" +
                    Session["campany_name"] + "';", con);
            SqlDataReader rd = null;
            rd = com.ExecuteReader();

            while (rd.Read())
            {
                Literal1.Text += @"<tr><td>" + rd.GetValue(0) + "\t" + rd.GetValue(1) + "\t" + rd.GetValue(2) +
                                 "</td><td>" + rd.GetValue(3) + "</td><td>" + rd.GetValue(4) + "</td></tr>";
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