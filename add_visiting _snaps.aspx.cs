using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class add_visiting__snaps : Page
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
            if (visiting_snaps_file.HasFile)
            {
                var path1 = Server.MapPath("visiting_snaps\\" + visiting_snaps_file.FileName);
                visiting_snaps_file.SaveAs(path1);
                con.Open();


                var insertquery =
                    "INSERT INTO [campany_visiting_snaps] (campany_name,visiting_snaps) values(@campany_name,@visiting_snaps)";
                var cmd = new SqlCommand(insertquery, con);


                cmd.Parameters.AddWithValue("@campany_name", ddcampany.Text);


                cmd.Parameters.AddWithValue("@visiting_snaps", @"visiting_snaps/" + visiting_snaps_file.FileName);


                cmd.ExecuteNonQuery(); //executing query
                con.Close(); //closing connection
                ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                    "alert('Insert Successfully');window.location='add_visiting _snaps.aspx';", true);
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }
    }
}