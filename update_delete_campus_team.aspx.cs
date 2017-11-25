using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class update_delete_campus_team : System.Web.UI.Page
{

    SqlConnection con=new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillEmpDropdownList();
        }
    }
    protected void FillEmpDropdownList()
    {
        var cmd = new SqlCommand();
        var adp = new SqlDataAdapter();
        var dt = new DataTable();
        try
        {
            cmd = new SqlCommand("Select Id,Name from [campus_team]", con);
            adp.SelectCommand = cmd;
            adp.Fill(dt);
            ddname.DataSource = dt;
            ddname.DataTextField = "Name";
            ddname.DataValueField = "Id";
            ddname.DataBind();
            ddname.Items.Insert(0, "-- Select --");
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }
        finally
        {
            cmd.Dispose();
            adp.Dispose();
            dt.Clear();
            dt.Dispose();
        }
    }

    protected void btnupdate_OnClick(object sender, EventArgs e)
    {
        try
        {

            if (campus_team_file.HasFile)
            {
                var path1 = Server.MapPath("person_image\\" + campus_team_file.FileName);
                campus_team_file.SaveAs(path1);
            }
            con.Open();
            var sql =
                "UPDATE [campus_team] SET department=@department,designation=@designation,phone_no=@phone_no,image=@image where Name=@Name";

            using (var cmd = new SqlCommand(sql, con))
            {

                cmd.Parameters.AddWithValue("@Name", ddname.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@department", dddepartment.Text.Trim());
                cmd.Parameters.AddWithValue("@designation", txtdesignation.Text.Trim());
                cmd.Parameters.AddWithValue("@phone_no", txtphone_num.Text.Trim());
               
                cmd.Parameters.AddWithValue("@image", @"person_image/" + campus_team_file.FileName);

                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                    "alert('Update Successfully');window.location='update_delete_campus_team.aspx';", true);
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
            String sql = "Delete from [campus_team] where Name='" + ddname.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                  "alert('Deleted Successfully');window.location='update_delete_campus_team.aspx';", true);
            con.Close();
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
              "alert('Error occured : " + ex.Message + "');", true);
        }

    }

    protected void ddname_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            var empId = Convert.ToInt32(ddname.SelectedValue);
            BindEmpGrid(empId);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }
    }
    private void BindEmpGrid(int empId)
    {
        var dt = new DataTable();
        var adp = new SqlDataAdapter();
        try
        {
            var cmd = new SqlCommand("select *  from [campus_team] where Id=" + empId + " ", con);
            adp.SelectCommand = cmd;
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                txtname.Text = dt.Rows[0]["Name"].ToString();
                dddepartment.Items.Insert(0, dt.Rows[0]["department"].ToString());
                txtdesignation.Text = dt.Rows[0]["designation"].ToString();
                txtphone_num.Text = dt.Rows[0]["phone_no"].ToString();
                Image1.ImageUrl = dt.Rows[0]["image"].ToString();

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

}