using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class add_campany_detail : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

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
            cmd = new SqlCommand("Select Id,campany_name from [campany]", con);
            adp.SelectCommand = cmd;
            adp.Fill(dt);
            ddcampany_name.DataSource = dt;
            ddcampany_name.DataTextField = "campany_name";
            ddcampany_name.DataValueField = "Id";
            ddcampany_name.DataBind();
            ddcampany_name.Items.Insert(0, "-- Select --");
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

    protected void ddcampany_name_OnSelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            var empId = Convert.ToInt32(ddcampany_name.SelectedValue);
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
            var cmd = new SqlCommand("select *  from [campany] where Id=" + empId + " ", con);
            adp.SelectCommand = cmd;
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                txtcamoany_descr.Text = dt.Rows[0]["campany_descr"].ToString();
                dddepartment.Items.Insert(0, dt.Rows[0]["department"].ToString());
              
                txtcampany_branch.Text = dt.Rows[0]["campany_branch"].ToString();
                txtcampany_package.Text = dt.Rows[0]["campany_pkg"].ToString();
                txtcampany_link.Text = dt.Rows[0]["campany_link"].ToString();
                txtcampany_campaus_process.Text = dt.Rows[0]["campus_process"].ToString();
                txtexit_interview_link.Text = dt.Rows[0]["exit_interview_link"].ToString();
                txtssc_per.Text = dt.Rows[0]["x_per"].ToString();
                txthsc_per.Text = dt.Rows[0]["xii_per"].ToString();
                txtdip_per.Text = dt.Rows[0]["dip_per"].ToString();
                txtfirst_year.Text = dt.Rows[0]["first_year"].ToString();
                txtsecond_year.Text = dt.Rows[0]["second_year"].ToString();
                txtthired_year.Text = dt.Rows[0]["third_year"].ToString();
                txtfourth_year.Text = dt.Rows[0]["fourth_year"].ToString();
                txtyear_gap.Text = dt.Rows[0]["y_gap"].ToString();
                txtlive_kts.Text = dt.Rows[0]["live_kts"].ToString();
                txtdead_kts.Text = dt.Rows[0]["dead_kts"].ToString();
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
           
            if (campany_image_file.HasFile)
            {
                var path1 = Server.MapPath("campany_image\\" + campany_image_file.FileName);
                campany_image_file.SaveAs(path1);
            }

          
            con.Open();
            var sql =
                "UPDATE [campany] SET campany_name=@campany_name,campany_image=@campany_image,campany_descr=@campany_descr," +
                "department=@department,campany_branch=@campany_branch," +
                "campany_pkg=@campany_pkg,campany_link=@campany_link,x_per=@x_per,xii_per=@xii_per,dip_per=@dip_per,first_year=@first_year,second_year=@second_year," +
                "third_year=@third_year,fourth_year=@fourth_year,y_gap=@y_gap,live_kts=@live_kts,dead_kts=@dead_kts,exit_interview_link=@exit_interview_link," +
                "campus_process=@campus_process where campany_name=@campany_name";

           

            using (var cmd = new SqlCommand(sql, con))
            {
               
                cmd.Parameters.AddWithValue("@campany_name", ddcampany_name.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@campany_descr", txtcamoany_descr.Text.Trim());
                cmd.Parameters.AddWithValue("@department", dddepartment.Text.Trim());
                
                cmd.Parameters.AddWithValue("@campany_branch", txtcampany_branch.Text.Trim());
                cmd.Parameters.AddWithValue("@campany_pkg", txtcampany_package.Text.Trim());
                cmd.Parameters.AddWithValue("@campany_link", txtcampany_link.Text.Trim());
                cmd.Parameters.AddWithValue("@x_per", txtssc_per.Text.Trim());
                cmd.Parameters.AddWithValue("@xii_per", txthsc_per.Text.Trim());
                cmd.Parameters.AddWithValue("@dip_per", txtdip_per.Text.Trim());
                cmd.Parameters.AddWithValue("@first_year", txtfirst_year.Text.Trim());
                cmd.Parameters.AddWithValue("@second_year", txtsecond_year.Text.Trim());
                cmd.Parameters.AddWithValue("@third_year", txtthired_year.Text.Trim());
                cmd.Parameters.AddWithValue("@fourth_year", txtfourth_year.Text.Trim());
                cmd.Parameters.AddWithValue("@y_gap", txtyear_gap.Text.Trim());
                cmd.Parameters.AddWithValue("@live_kts", txtlive_kts.Text.Trim());
                cmd.Parameters.AddWithValue("@dead_kts", txtdead_kts.Text.Trim());
                cmd.Parameters.AddWithValue("@exit_interview_link", txtexit_interview_link.Text.Trim());
                cmd.Parameters.AddWithValue("@campus_process", txtcampany_campaus_process.Text.Trim());
                cmd.Parameters.AddWithValue("@campany_image", @"campany_image/" + campany_image_file.FileName);
               
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                    "alert('Update Successfully');window.location='add_company_detail.aspx';", true);
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }
    }
}