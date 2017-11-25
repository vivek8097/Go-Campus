using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class campanylist : System.Web.UI.Page
{
    private readonly SqlConnection con =
       new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            con.Open();
            var com = new SqlCommand(@"SELECT Id,campany_name,department from [campany];", con);
            SqlDataReader rd = null;
            rd = com.ExecuteReader();

            while (rd.Read())
            {
                var c_name = Convert.ToString(rd.GetValue(1));

                var action = "";

                action += "<a href=\"company_detail.aspx?Id=" + rd.GetValue(0) +
                          "\"><i class=\"glyphicon glyphicon-search\"></i></span></a>";
                Literal1.Text += @"<tr><td>" + rd.GetValue(1) + "</td><td>" + rd.GetValue(2) +
                                 "</td><td class=\"toolbar\">" + action + "</td></tr>";
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