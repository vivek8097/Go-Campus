using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete_update_insperation : System.Web.UI.Page
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
        if (ddtype.SelectedItem.ToString() == "Image")
        {
            try
            {
                cmd =
                    new SqlCommand(
                        "Select Id,image_head from [inspire] where type='" + ddtype.SelectedItem.ToString() + "'", con);
                adp.SelectCommand = cmd;
                adp.Fill(dt);
                ddhead.DataSource = dt;
                ddhead.DataTextField = "image_head";
                ddhead.DataValueField = "Id";
                ddhead.DataBind();
                ddhead.Items.Insert(0, "-- Select --");
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
       else if (ddtype.SelectedItem.ToString() == "Video")
        {
            try
            {
                cmd =
                    new SqlCommand(
                        "Select Id,video_head from [inspire] where type='" + ddtype.SelectedItem.ToString() + "'", con);
                adp.SelectCommand = cmd;
                adp.Fill(dt);
                ddhead.DataSource = dt;
                ddhead.DataTextField = "video_head";
                ddhead.DataValueField = "Id";
                ddhead.DataBind();
                ddhead.Items.Insert(0, "-- Select --");
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
        if (ddtype.SelectedItem.ToString() == "Story")
        {
            try
            {
                cmd =
                    new SqlCommand(
                        "Select Id,person_name from [inspire] where type='" + ddtype.SelectedItem.ToString() + "'", con);
                adp.SelectCommand = cmd;
                adp.Fill(dt);
                ddhead.DataSource = dt;
                ddhead.DataTextField = "person_name";
                ddhead.DataValueField = "Id";
                ddhead.DataBind();
                ddhead.Items.Insert(0, "-- Select --");
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
    }

    protected void ddhead_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            var empId = Convert.ToInt32(ddhead.SelectedValue);
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
            var cmd = new SqlCommand("select *  from [inspire] where Id=" + empId + " ", con);
            adp.SelectCommand = cmd;
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                txtimage_head.Text = dt.Rows[0]["image_head"].ToString();
                Image1.ImageUrl = dt.Rows[0]["image_link"].ToString();
                txtvideo_head.Text = dt.Rows[0]["video_head"].ToString();
                txtvideo_link.Text = dt.Rows[0]["video_link"].ToString();
                txtperson_name.Text = dt.Rows[0]["person_name"].ToString();
                txtworking.Text = dt.Rows[0]["working"].ToString();
                txtcontent.Text = dt.Rows[0]["descr"].ToString();
                person_image.ImageUrl = dt.Rows[0]["person_image_link"].ToString();

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

    protected void ddtype_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddtype.SelectedItem.ToString() == "Video")
        {
            panelvideo.Visible = true;
            panelimage.Visible = false;
            panelstory.Visible = false;
        }
        if (ddtype.SelectedItem.ToString() == "Image")
        {
            panelimage.Visible = true;
            panelstory.Visible = false;
            panelvideo.Visible = false;
        }
        if (ddtype.SelectedItem.ToString() == "Story")
        {
            panelstory.Visible = true;
            panelimage.Visible = false;
            panelvideo.Visible = false;
        }
        FillEmpDropdownList();
    }

    protected void btnupdate_OnClick(object sender, EventArgs e)
    {
        if (ddtype.SelectedItem.ToString() == "Video")
        {
            try
            {
                con.Open();
                var sql =
                    "Update [inspire] set video_head=@video_head,video_link=@video_link,type=@type where video_head=@video_head1";
                using (var cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@video_head1", ddhead.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@type", ddtype.Text.Trim());
                    cmd.Parameters.AddWithValue("@video_head", txtvideo_head.Text.Trim());
                    cmd.Parameters.AddWithValue("@video_link", txtvideo_link.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                        "alert('Insert Successfully');window.location='Delete_update_insperation.aspx';", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                    "alert('Error occured : " + ex.Message + "');", true);
            }
        }
        else if (ddtype.SelectedItem.ToString() == "Image")
        {
            try
            {
                if (inspire_image_file.HasFile)
                {
                    var path1 = Server.MapPath("inspire_image\\" + inspire_image_file.FileName);
                    inspire_image_file.SaveAs(path1);
                }
                con.Open();
                var sql =
                    "update [inspire] set image_head=@image_head,image_link=@image_link,type=@type where image_head=@image_head1";
                using (var cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@image_head1", ddhead.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@type", ddtype.Text.Trim());
                    cmd.Parameters.AddWithValue("@image_head", txtimage_head.Text.Trim());
                    cmd.Parameters.AddWithValue("@image_link", @"inspire_image/" + inspire_image_file.FileName);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                        "alert('Insert Successfully');window.location='Delete_update_insperation.aspx';", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                    "alert('Error occured : " + ex.Message + "');", true);
            }
        }
        else if (ddtype.SelectedItem.ToString() == "Story")
        {
            try
            {
                if (person_image_file.HasFile)
                {
                    var path2 = Server.MapPath("inspire_image\\" + person_image_file.FileName);
                    person_image_file.SaveAs(path2);
                }
                con.Open();
                var sql =
                    "update [inspire] set person_name=@person_name,working=@working,descr=@descr,person_image_link=@person_image_link,type=@type where person_name=@person_name1";
                using (var cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@person_name1", ddhead.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@type", ddtype.Text.Trim());
                    cmd.Parameters.AddWithValue("@person_name", txtperson_name.Text.Trim());
                    cmd.Parameters.AddWithValue("@working", txtworking.Text.Trim());
                    cmd.Parameters.AddWithValue("@descr", txtcontent.Text.Trim());
                    cmd.Parameters.AddWithValue("@person_image_link", @"inspire_image/" + person_image_file.FileName);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                        "alert('Update Successfully');window.location='Delete_update_insperation.aspx';", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                    "alert('Error occured : " + ex.Message + "');", true);
            }
        }
    }

    protected void btndelete_OnClick(object sender, EventArgs e)
    {
        if (ddtype.SelectedItem.ToString() == "Video")
        {
            con.Open();
            string sql = "Delete from [inspire] where video_head='" + ddhead.SelectedItem.ToString() + "'";
            SqlCommand cmd=new SqlCommand(sql,con);
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                       "alert('Deleted Successfully');window.location='Delete_update_insperation.aspx';", true);

        }
       else if (ddtype.SelectedItem.ToString() == "Image")
        {
            con.Open();
            string sql = "Delete from [inspire] where image_head='" + ddhead.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                       "alert('Deleted Successfully');window.location='Delete_update_insperation.aspx';", true);

        }
       else if (ddtype.SelectedItem.ToString() == "Story")
        {
            con.Open();
            string sql = "Delete from [inspire] where person_name='" + ddhead.SelectedItem.ToString() + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();
            con.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                       "alert('Deleted Successfully');window.location='Delete_update_insperation.aspx';", true);

        }

    }
}