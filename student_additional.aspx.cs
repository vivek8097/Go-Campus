using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class student_additional : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindCheckBox();
            BindstudentData();
        }
    }

    public void BindCheckBox()
    {
        var cmd =
            new SqlCommand(
                "select c_lang,cpp_lang,java_lang,python_lang from student where email='" + Session["email"] + "'", con);
        SqlDataReader dr = null;
        con.Open();
        dr = cmd.ExecuteReader();
        dr.Read();
        var c = Convert.ToString(dr.GetValue(0));
        var cpp = Convert.ToString(dr.GetValue(1));
        var java = Convert.ToString(dr.GetValue(2));
        var python = Convert.ToString(dr.GetValue(3));
        dr.Close();
        if (c == "Y")
            cbc.Checked = true;
        else
            cbc.Checked = false;
        if (cpp == "Y")
            cbcp.Checked = true;
        else
            cbcp.Checked = false;
        if (java == "Y")
            cbjava.Checked = true;
        else
            cbjava.Checked = false;
        if (python == "Y")
            cbpython.Checked = true;
        else
            cbpython.Checked = false;
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
                txtcampany_name.Text = dt.Rows[0]["campany_name"].ToString();
                txtcampany_address.Text = dt.Rows[0]["campany_address"].ToString();
                txtofficer_name.Text = dt.Rows[0]["officer_name"].ToString();
                txtofficer_designation.Text = dt.Rows[0]["officer_designation"].ToString();
                txtofficer_num.Text = dt.Rows[0]["officer_num"].ToString();
                txtrelation_with_officer.Text = dt.Rows[0]["relation_with_officer"].ToString();
                txtnatureoftraining.Text = dt.Rows[0]["nature_of_training"].ToString();
                txthobbies.Text = dt.Rows[0]["hobbies"].ToString();
                txtstrength.Text = dt.Rows[0]["strength"].ToString();
                txtweakness.Text = dt.Rows[0]["weakness"].ToString();
                txtcareerobjective.Text = dt.Rows[0]["career_objective"].ToString();
                txtcertification.Text = dt.Rows[0]["certifications"].ToString();
                txtacdach.Text = dt.Rows[0]["acadmic"].ToString();
                txtprojectinternship.Text = dt.Rows[0]["projectand_internship"].ToString();
                txtpositionofresponsibility.Text = dt.Rows[0]["positionandresponsibility"].ToString();
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
        lblmsg.Text = "break1";
        var c = cbc.Checked ? "Y" : "N";
        var cpp = cbcp.Checked ? "Y" : "N";
        var java = cbjava.Checked ? "Y" : "N";
        var python = cbpython.Checked ? "Y" : "N";
        lblmsg.Text = c;

        con.Open();
        lblmsg.Text = "break3";
        var sql =
            "UPDATE [student] SET c_lang=@c_lang, cpp_lang=@cpp_lang, java_lang=@java_lang,python_lang=@python_lang," +
            "campany_name=@campany_name,campany_address=@campany_address,officer_name=@officer_name,officer_designation=@officer_designation,officer_num=@officer_num," +
            "relation_with_officer=@relation_with_officer,nature_of_training=@nature_of_training,hobbies=@hobbies,strength=@strength,weakness=@weakness," +
            "career_objective = @career_objective, acadmic=@acadmic, certifications=@certifications, projectand_internship=@projectand_internship, positionandresponsibility=@positionandresponsibility where (email=@email)";
        lblmsg.Text = "break4";
        using (var cmd = new SqlCommand(sql, con))
        {
            cmd.Parameters.AddWithValue("@c_lang", c);
            cmd.Parameters.AddWithValue("@cpp_lang", cpp);
            cmd.Parameters.AddWithValue("@java_lang", java);
            cmd.Parameters.AddWithValue("@python_lang", python);
            cmd.Parameters.AddWithValue("@campany_name", txtcampany_name.Text.Trim());
            cmd.Parameters.AddWithValue("@campany_address", txtcampany_address.Text.Trim());
            cmd.Parameters.AddWithValue("@officer_name", txtofficer_name.Text.Trim());
            cmd.Parameters.AddWithValue("@officer_designation", txtofficer_designation.Text.Trim());
            cmd.Parameters.AddWithValue("@officer_num", txtofficer_num.Text.Trim());
            cmd.Parameters.AddWithValue("@relation_with_officer", txtrelation_with_officer.Text.Trim());
            cmd.Parameters.AddWithValue("@nature_of_training", txtnatureoftraining.Text.Trim());
            cmd.Parameters.AddWithValue("@hobbies", txthobbies.Text.Trim());
            cmd.Parameters.AddWithValue("@strength", txtstrength.Text.Trim());
            cmd.Parameters.AddWithValue("@weakness", txtweakness.Text.Trim());
            cmd.Parameters.AddWithValue("@career_objective", txtcareerobjective.Text.Trim());
            cmd.Parameters.AddWithValue("@acadmic", txtacdach.Text.Trim());
            cmd.Parameters.AddWithValue("@certifications", txtcertification.Text.Trim());
            cmd.Parameters.AddWithValue("@projectand_internship", txtprojectinternship.Text.Trim());
            cmd.Parameters.AddWithValue("@positionandresponsibility", txtpositionofresponsibility.Text.Trim());
            cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
            lblmsg.Text = "break5";
            cmd.ExecuteNonQuery();
            lblmsg.Text = "break6";
            con.Close();
            ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                "alert('Update Successfully');window.location='student_additional.aspx';", true);
        }
    }
}