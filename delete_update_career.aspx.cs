using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class delete_update_career : System.Web.UI.Page
{
    SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindEmpGrid();
        }

    }
    private void BindEmpGrid()
    {
        var dt = new DataTable();
        var adp = new SqlDataAdapter();
        try
        {
            var cmd = new SqlCommand("select *  from [career] where Id="+Request.QueryString["Id"]+"", con);
            adp.SelectCommand = cmd;
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                txtcareer_head.Text = dt.Rows[0]["link_head"].ToString();
                txtcareer_descr.Text = dt.Rows[0]["link_descr"].ToString();
                txtcarrer_link.Text = dt.Rows[0]["link"].ToString();
                dddepartment.Items.Insert(0,dt.Rows[0]["department"].ToString());
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
        try
        {
            con.Open();
            string sql =
                "Update [career] set link_head=@link_head,link_descr=@link_descr,link=@link,department=@department where Id=" +
                Request.QueryString["Id"] + "";
            using (SqlCommand cmd = new SqlCommand(sql, con))
            {
                cmd.Parameters.AddWithValue("@link_head", txtcareer_head.Text.Trim());
                cmd.Parameters.AddWithValue("@link_descr", txtcareer_descr.Text.Trim());
                cmd.Parameters.AddWithValue("@link", txtcarrer_link.Text.Trim());
                cmd.Parameters.AddWithValue("@department", dddepartment.SelectedItem.ToString());
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "Message",
               "alert('Update Successfully');window.location='delete_update_career.aspx';", true);
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }

    }

    protected void btndelete_OnClick(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string sql = "Delete from [career] where Id=" + Request.QueryString["Id"] + "";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                "alert('deleted Successfully');window.location='delete_update_career.aspx';", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
               "alert('Error occured : " + ex.Message + "');", true);
        }
    }
}