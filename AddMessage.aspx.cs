using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class AddMessage : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            var insertquery =
                "INSERT INTO [notification] (msg_head,msg_body,hyperlink) values(@msg_head,@msg_body,@hyperlink)";
            var cmd = new SqlCommand(insertquery, con);
            cmd.Parameters.AddWithValue("@msg_head", txtheader.Text);
            cmd.Parameters.AddWithValue("@msg_body", txtmessage.Text);
            cmd.Parameters.AddWithValue("@hyperlink", txtlink.Text);
            cmd.ExecuteNonQuery(); //executing query
            con.Close(); //closing connection
            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                "alert('Notification Uploaded Successfully');window.location='AddMessage.aspx';", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }
    }
}