using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class student_personal : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindstudentData();
        }
    }

    public void BindstudentData()
    {
        var dt = new DataTable();
        var adp = new SqlDataAdapter();
        try
        {
            var cmd = new SqlCommand("select * from [student] where email='" + Session["email"] + "'", con);
            adp.SelectCommand = cmd;
            adp.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                txtprn.Text = dt.Rows[0]["prn"].ToString();
                txtfname.Text = dt.Rows[0]["fname"].ToString();
                txtmname.Text = dt.Rows[0]["mname"].ToString();
                txtlname.Text = dt.Rows[0]["lname"].ToString();
                txtdob.Value = dt.Rows[0]["dob"].ToString();
                txtaddress.Text = dt.Rows[0]["address"].ToString();
                txtmobile.Text = dt.Rows[0]["mob_no"].ToString();
                txtpassword.Text = dt.Rows[0]["password"].ToString();
                txtreligon.Text = dt.Rows[0]["religion"].ToString();
                txtcast.Text = dt.Rows[0]["cast"].ToString();
                dddepartment.Items.Insert(0, dt.Rows[0]["department"].ToString());
                ddgender.Items.Insert(0, dt.Rows[0]["gender"].ToString());
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


    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            if (p_photo.HasFile)
            {
                var path1 = Server.MapPath("student photo\\" + p_photo.FileName);
                p_photo.SaveAs(path1);
            }
            con.Open();
            var sql = "UPDATE [student] SET fname=@fname, mname=@mname, lname=@lname,dob=@dob,prn=@prn," +
                      "department = @department, gender=@gender, mob_no=@mob_no, password=@password, address=@address,religion=@religion,cast=@cast,photo=@photo where (email=@email)";
            using (var cmd = new SqlCommand(sql, con))
            {
                cmd.Parameters.AddWithValue("@prn", txtprn.Text.Trim());
                cmd.Parameters.AddWithValue("@fname", txtfname.Text.Trim());
                cmd.Parameters.AddWithValue("@mname", txtmname.Text.Trim());
                cmd.Parameters.AddWithValue("@lname", txtlname.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", txtdob.Value.Trim());
                cmd.Parameters.AddWithValue("@gender", ddgender.Text.Trim());
                cmd.Parameters.AddWithValue("@department", dddepartment.Text.Trim());
                cmd.Parameters.AddWithValue("@mob_no", txtmobile.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());
                cmd.Parameters.AddWithValue("@address", txtaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@religion", txtreligon.Text.Trim());
                cmd.Parameters.AddWithValue("@cast", txtcast.Text.Trim());
                cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
                cmd.Parameters.AddWithValue("@photo", @"student photo/" + p_photo.FileName);

                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                    "alert('Update Successfully');window.location='student_personal.aspx';", true);
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }
    }
}