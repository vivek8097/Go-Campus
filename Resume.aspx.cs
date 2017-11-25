using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resume : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());


    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    


    protected void btnupload_Click(object sender, EventArgs e)
    {
        if (resumefile.HasFile)
        {
            var path1 = Server.MapPath("Resume\\" + resumefile.FileName);
            resumefile.SaveAs(path1);
        }
        con.Open();
        var sql = "UPDATE [student] SET resume=@resume where (email=@email)";
        using (var cmd = new SqlCommand(sql, con))
        {
            cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
            cmd.Parameters.AddWithValue("@resume", @"Resume/" + resumefile.FileName);

            cmd.ExecuteNonQuery();
            con.Close();
            
            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                "alert('Resume Uploaded Successfully Update Successfully');window.location='Resume.aspx';", true);
        }
    }



    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Download")
        {
            Response.Clear();
            ;
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition","filename="+e.CommandArgument);
            Response.TransmitFile(Server.MapPath(@"/")+e.CommandArgument);
            Response.End();
        }
    }
}