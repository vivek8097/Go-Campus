using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class delete_visiting_snaps : System.Web.UI.Page
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
            String sql = "Delete from [campany_visiting_snaps] where Id='" + e.CommandArgument + "'";
            SqlCommand cmd =new SqlCommand(sql,con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("delete_visiting_snaps.aspx");


            
        }

    }
}