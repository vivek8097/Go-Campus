using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class add_insperation : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void ddtype_SelectedIndexChanged(object sender, EventArgs e)
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
    }

    protected void btninsert_OnClick(object sender, EventArgs e)
    {
        if (ddtype.SelectedItem.ToString() == "Video")
        {
            try
            {
                con.Open();
                var sql =
                    "Insert into [inspire] (video_head,video_link,type) values(@video_head,@video_link,@type)";
                using (var cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@type", ddtype.Text.Trim());
                    cmd.Parameters.AddWithValue("@video_head", txtvideo_head.Text.Trim());
                    cmd.Parameters.AddWithValue("@video_link", txtvideo_link.Text.Trim());
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                        "alert('Insert Successfully');window.location='add_insperation.aspx';", true);
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
                    "Insert into [inspire] (image_head,image_link,type) values(@image_head,@image_link,@type)";
                using (var cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@type", ddtype.Text.Trim());
                    cmd.Parameters.AddWithValue("@image_head", txtimage_head.Text.Trim());
                    cmd.Parameters.AddWithValue("@image_link", @"inspire_image/" + inspire_image_file.FileName);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                        "alert('Insert Successfully');window.location='add_insperation.aspx';", true);
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
                    "Insert into [inspire] (person_name,working,descr,person_image_link,type) values(@person_name,@working,@descr,@person_image_link,@type)";
                using (var cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@type", ddtype.Text.Trim());
                    cmd.Parameters.AddWithValue("@person_name", txtperson_name.Text.Trim());
                    cmd.Parameters.AddWithValue("@working", txtworking.Text.Trim());
                    cmd.Parameters.AddWithValue("@descr", txtcontent.Text.Trim());
                    cmd.Parameters.AddWithValue("@person_image_link", @"inspire_image/" + person_image_file.FileName);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                        "alert('Insert Successfully');window.location='add_insperation.aspx';", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                    "alert('Error occured : " + ex.Message + "');", true);
            }
        }
    }
}