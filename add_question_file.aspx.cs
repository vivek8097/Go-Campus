using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class add_question_file : System.Web.UI.Page
{
    SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_OnClick(object sender, EventArgs e)
    {
        if (question_file.HasFile)
        {
            var path1 = Server.MapPath("Question_file\\" + question_file.FileName);
            question_file.SaveAs(path1);
        }
        con.Open();
        var sql =
            "insert into [important_question] (campany_name,question_link,question_descr) values(@campany_name,@question_link,@question_descr)";
        using (var cmd = new SqlCommand(sql, con))
        {
            cmd.Parameters.AddWithValue("@question_descr", txtquestion_descr.Text.Trim());
            cmd.Parameters.AddWithValue("@campany_name",DropDownList1.Text.Trim());
            cmd.Parameters.AddWithValue("@question_link", @"Question_file/" + question_file.FileName);

            cmd.ExecuteNonQuery();
            con.Close();

            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                "alert(' Uploaded Successfully');window.location='add_question_file.aspx';", true);
        }
    }
}