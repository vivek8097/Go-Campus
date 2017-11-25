using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class add_campus_team : Page
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
            if (person_image_file.HasFile)
            {
                var path1 = Server.MapPath("person_image\\" + person_image_file.FileName);
                person_image_file.SaveAs(path1);
            }
            con.Open();
            var insertquery =
                "INSERT INTO [campus_team] (name,department,designation,phone_no,image) values(@name,@department,@designation,@phone_no,@image)";
            var cmd = new SqlCommand(insertquery, con);
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@department", dddepartment.Text);
            cmd.Parameters.AddWithValue("@designation", txtdesignation.Text);
            cmd.Parameters.AddWithValue("@phone_no", txtphone_num.Text);
            cmd.Parameters.AddWithValue("@image", @"person_image/" + person_image_file.FileName);


            cmd.ExecuteNonQuery(); //executing query
            con.Close(); //closing connection
            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                "alert('Insert Successfully');window.location='add_campus_team.aspx';", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }
    }
}