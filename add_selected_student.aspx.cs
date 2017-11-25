using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class add_selected_student : Page
{
    private string campany1;
    private string campany2;
    private string campany3;

    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    private string query;

    protected void Page_Load(object sender, EventArgs e)
    {
        query = Convert.ToString(Request.QueryString["email"]);
    }

    protected void btninsert_OnClick(object sender, EventArgs e)
    {
        con.Open();
        var sql = "select campany1,campany2,campany3 from [student] where email='" + query + "'";
        // query = Convert.ToString(Request.QueryString["email"]);
        var cmd1 = new SqlCommand(sql, con);
        SqlDataReader dr = null;
        dr = cmd1.ExecuteReader();
        // query = Convert.ToInt32(Request.QueryString["sid"]);
        while (dr.Read())
        {
            campany1 = Convert.ToString(dr.GetValue(0));
            campany2 = Convert.ToString(dr.GetValue(1));
            campany3 = Convert.ToString(dr.GetValue(2));
        }
        con.Close();

        
        if (campany1 == "")
        {
            //  Label1.Text = Request.QueryString["email"];
            con.Open();
            var insertquery =
                " update student set campany1 =@campany1 where email ='" + query + "'";
           
            using (var cmd = new SqlCommand(insertquery, con))
            {
               
                cmd.Parameters.AddWithValue("@campany1", ddcampany.Text);
                cmd.ExecuteNonQuery(); //executing query
                con.Close(); //closing connection
                ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                    "alert('Insert Successfully');window.location='add_selected_student.aspx';", true);
            }
        }


        else if (campany2 == "")
        {
           
            con.Open();
            var insertquery =
                "update [student] set campany2=@campany2 where email='" + query + "'";
            using (var cmd = new SqlCommand(insertquery, con))
            {
              
                cmd.Parameters.AddWithValue("@campany2", ddcampany.Text);
                cmd.ExecuteNonQuery(); //executing query
                con.Close(); //closing connection
                ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                    "alert('Insert Successfully');window.location='add_selected_student.aspx';", true);
            }
        }


        else if (campany3 == "")
        {
            con.Open();
            var insertquery =
                "update [student] set campany3=@campany3 where email='" + query + "'";
            using (var cmd = new SqlCommand(insertquery, con))
            {
                cmd.Parameters.AddWithValue("@campany3", ddcampany.Text);
                cmd.ExecuteNonQuery(); //executing query
                con.Close(); //closing connection
                ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                    "alert('Insert Successfully');window.location='add_selected_student.aspx';", true);
            }
        }
    }
}