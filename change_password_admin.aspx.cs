using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class change_password_admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_OnClick(object sender, EventArgs e)
    {
        con.Open();
        string sql = "select email,password from [admin] where email='" + txtemail.Text + "' and password='" +
                     txtopassword.Text + "'";
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = null;
        dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
            con.Close();
            con.Open();
            string sql2 = "update admin set password=@password where email=@email";
            using (SqlCommand cmd1 = new SqlCommand(sql2, con))
            {
                cmd1.Parameters.AddWithValue("@password", txtnewpassword.Text.Trim());
                cmd1.Parameters.AddWithValue("@email", Session["email"].ToString());
                cmd1.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                    "alert('Change Successfully');window.location='change_password_admin.aspx';", true);
            }
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                   "alert('User id and password is incorrect');", true);
        }
    }
}