using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class update_question : System.Web.UI.Page
{
    SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

       
       
        var dt = new DataTable();
        var adp = new SqlDataAdapter();
        try
        {
            var cmd = new SqlCommand("select *  from [important_question] where Id="+Request.QueryString["Id"]+"", con);
            adp.SelectCommand = cmd;
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                txtquestion_descr.Text = dt.Rows[0]["question_descr"].ToString();
                ddcampany_name.Items.Insert(0,dt.Rows[0]["campany_name"].ToString());
               
               
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }
        finally
        {
            dt.Clear();
            dt.Dispose();
            adp.Dispose();
        }
    }

    protected void btnupdate_OnClick(object sender, EventArgs e)
    {

       
        if (question_file.HasFile)
        {
            var path1 = Server.MapPath("Question_file\\" + question_file.FileName);
            question_file.SaveAs(path1);
        }
        con.Open();
        string sql =
            "update [important_question] set campany_name=@campany_name,question_link=@question_link,question_descr=@question_descr where Id="+Request.QueryString["Id"]+"";
           
        
        using (SqlCommand cmd = new SqlCommand(sql, con))
        {
            cmd.Parameters.AddWithValue("@question_link", @"Question_file/" + question_file.FileName);
            cmd.Parameters.AddWithValue("@campany_name", ddcampany_name.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@question_descr", txtquestion_descr.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                "alert('Update Successfully');window.location='update_question.aspx';", true);
        }
    }
}