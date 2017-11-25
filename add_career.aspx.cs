using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class add_career : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btninsert_OnClick(object sender, EventArgs e)
    {
        try
        {
            con.Open();


            var insertquery =
                "INSERT INTO [career] (link_head,link_descr,link,department) values(@link_head,@link_descr,@link,@department)";
            var cmd = new SqlCommand(insertquery, con);


            cmd.Parameters.AddWithValue("@link_head", txtcareer_head.Text);
            cmd.Parameters.AddWithValue("@link_descr", txtcareer_descr.Text);
            cmd.Parameters.AddWithValue("@link", txtcarrer_link.Text);
            cmd.Parameters.AddWithValue("@department", dddepartment.Text);


            cmd.ExecuteNonQuery(); //executing query
            con.Close(); //closing connection
            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                "alert('Insert Successfully');window.location='add_career.aspx';", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }
    }
}