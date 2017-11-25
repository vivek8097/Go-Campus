using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class delete_update_questions : System.Web.UI.Page
{
    SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {
            con.Open();
            Response.Clear();
            String sql = "Delete from [important_question] where Id='" + e.CommandArgument + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/delete_update_questions.aspx");



        }
        if (e.CommandName == "Update")
        {
                Response.Redirect("update_question.aspx?Id='"+e.CommandArgument.ToString()+"'");
        }
    }
}