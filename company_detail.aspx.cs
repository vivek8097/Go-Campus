using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class campany_detail : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        var sql = "Select * from [campany] where Id='" + Request.QueryString["Id"] + "'";
        var cmd = new SqlCommand(sql, con);
        SqlDataReader dr = null;
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            var c_name = Convert.ToString(dr.GetValue(9));
            Session["campany_name"] = c_name;
        }
        con.Close();
    }
}