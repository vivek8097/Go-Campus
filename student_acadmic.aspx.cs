using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class student_acadmic : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    int count;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindStudentData();
            MaintainScrollPositionOnPostBack = true;
        }
    }

    public void BindStudentData()
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
               
                txtdip_final_year.Text = dt.Rows[0]["final_dip_agg"].ToString();
                txtbest_five.Text = dt.Rows[0]["ssc_best_five_agg"].ToString();
                txtcetaieee.Text = dt.Rows[0]["cet_aieee"].ToString();
                ddsscboard.Items.Insert(0, dt.Rows[0]["x_board"].ToString());
                txtsscschool.Text = dt.Rows[0]["x_school"].ToString();
                txtssccomplitionmonth.Text = dt.Rows[0]["x_complitionmonth"].ToString();
                txtssccomplitionyear.Text = dt.Rows[0]["x_complitionyear"].ToString();
                txtsscmarksobtained.Text = dt.Rows[0]["x_marksobtained"].ToString();
                txtssctotalmarks.Text = dt.Rows[0]["x_totalmarks"].ToString();
                ddhscboard.Items.Insert(0, dt.Rows[0]["xii_board"].ToString());
                txthsccollege.Text = dt.Rows[0]["xii_college"].ToString();
                txthsccomplitionmonth.Text = dt.Rows[0]["xii_complitionmonth"].ToString();
                txthsccomplitionyear.Text = dt.Rows[0]["xii_complitionyear"].ToString();
                txthscmarksobtained.Text = dt.Rows[0]["xii_marksobtained"].ToString();
                txthsctotalmarks.Text = dt.Rows[0]["xii_totalmarks"].ToString();
                dddipboard.Items.Insert(0, dt.Rows[0]["dip_board"].ToString());
                txtdipcollege.Text = dt.Rows[0]["dip_college"].ToString();
                txtdipcomplitionmonth.Text = dt.Rows[0]["dip_complitionmonth"].ToString();
                txtdipcomplitionyear.Text = dt.Rows[0]["dip_complitionyear"].ToString();
                txtdipmarksobtained.Text = dt.Rows[0]["dip_marksobtained"].ToString();
                txtdiptotalmarks.Text = dt.Rows[0]["dip_totalmarks"].ToString();
                ddbeuniversity.Items.Insert(0, dt.Rows[0]["be_university"].ToString());
                ddyear.Items.Insert(0, dt.Rows[0]["year"].ToString());
                ddbecollege.Items.Insert(0, dt.Rows[0]["be_college"].ToString());
                ddbesem1.Items.Insert(0, dt.Rows[0]["be_sem1_applicable"].ToString());
                ddbesem2.Items.Insert(0, dt.Rows[0]["be_sem2_applicable"].ToString());
                ddmeapplicalbe.Items.Insert(0, dt.Rows[0]["me_applicable"].ToString());
                txtbesem1complitionmonth.Text = dt.Rows[0]["be_sem1_complitionmonth"].ToString();
                txtbesem1complitionyear.Text = dt.Rows[0]["be_sem1_complitionyear"].ToString();
                txtbesem1marksobtained.Text = dt.Rows[0]["be_sem1_marksobtained"].ToString();
                txtbesem1totalmarks.Text = dt.Rows[0]["be_sem1_totalmarks"].ToString();
              
                txtbesem2complitionmonth.Text = dt.Rows[0]["be_sem2_complitionmonth"].ToString();
                txtbesem2complitionyear.Text = dt.Rows[0]["be_sem2_complitionyear"].ToString();
                txtbesem2marksobtained.Text = dt.Rows[0]["be_sem2_marksobtained"].ToString();
                txtbesem2totalmarks.Text = dt.Rows[0]["be_sem2_totalmarks"].ToString();
               
                txtbesem3complitionmonth.Text = dt.Rows[0]["be_sem3_complitionmonth"].ToString();
                txtbesem3complitionyear.Text = dt.Rows[0]["be_sem3_complitionyear"].ToString();
                txtbesem3markobtained.Text = dt.Rows[0]["be_sem3_marksobtained"].ToString();
                txtbesem3totalmarks.Text = dt.Rows[0]["be_sem3_totalmarks"].ToString();
              
                txtbesem4complitionmonth.Text = dt.Rows[0]["be_sem1_complitionmonth"].ToString();
                txtbesem4complitionyear.Text = dt.Rows[0]["be_sem4_complitionyear"].ToString();
                txtbesem4marksobtained.Text = dt.Rows[0]["be_sem4_marksobtained"].ToString();
                txtbesem4totalmarks.Text = dt.Rows[0]["be_sem4_totalmarks"].ToString();
              
                txtbesem5complitionmonth.Text = dt.Rows[0]["be_sem5_complitionmonth"].ToString();
                txtbesem5complitionyear.Text = dt.Rows[0]["be_sem5_complitionyear"].ToString();
                txtbesem5marksobtained.Text = dt.Rows[0]["be_sem5_marksobtained"].ToString();
                txtbesem5totalmarks.Text = dt.Rows[0]["be_sem5_totalmarks"].ToString();
             
                txtbesem6complitionmonth.Text = dt.Rows[0]["be_sem6_complitionmonth"].ToString();
                txtbesem6complitionyear.Text = dt.Rows[0]["be_sem6_complitionyear"].ToString();
                txtbesem6marksobtained.Text = dt.Rows[0]["be_sem6_marksobtained"].ToString();
                txtbesem6totalmarks.Text = dt.Rows[0]["be_sem6_totalmarks"].ToString();
              
                txtbesem7complitionmonth.Text = dt.Rows[0]["be_sem7_complitionmonth"].ToString();
                txtbesem7complitionyear.Text = dt.Rows[0]["be_sem7_complitionyear"].ToString();
                txtbesem7marksobtained.Text = dt.Rows[0]["be_sem7_marksobtained"].ToString();
                txtbesem7totalmarks.Text = dt.Rows[0]["be_sem7_totalmarks"].ToString();
              
                txtbesem8complitionmonth.Text = dt.Rows[0]["be_sem8_complitionmonth"].ToString();
                txtbesem8complitionyear.Text = dt.Rows[0]["be_sem8_complitionyear"].ToString();
                txtbesem8marksobtained.Text = dt.Rows[0]["be_sem8_marksobtained"].ToString();
                txtbesem8totalmarks.Text = dt.Rows[0]["be_sem8_totalmarks"].ToString();
               
                txtmesem1complitionmonth.Text = dt.Rows[0]["me_sem1_complitionmonth"].ToString();
                txtmesem1complitionyear.Text = dt.Rows[0]["be_sem1_complitionyear"].ToString();
                txtmesem1marksobtained.Text = dt.Rows[0]["be_sem1_marksobtained"].ToString();
                txtmesem1totalmarks.Text = dt.Rows[0]["be_sem1_totalmarks"].ToString();
                txtmesem1agg.Text = dt.Rows[0]["be_sem1_agg"].ToString();
                txtmesem2complitionmonth.Text = dt.Rows[0]["be_sem2_complitionmonth"].ToString();
                txtmesem2complitionyear.Text = dt.Rows[0]["be_sem2_complitionyear"].ToString();
                txtmesem2marksobtained.Text = dt.Rows[0]["be_sem2_marksobtained"].ToString();
                txtmesem2totalmarksobtained.Text = dt.Rows[0]["be_sem2_totalmarks"].ToString();
                txtmesem2agg.Text = dt.Rows[0]["be_sem2_agg"].ToString();
                txtmesem3complitionmonth.Text = dt.Rows[0]["be_sem3_complitionmonth"].ToString();
                txtmesem3complitionyear.Text = dt.Rows[0]["be_sem3_complitionyear"].ToString();
                txtmesem3marksobtained.Text = dt.Rows[0]["be_sem3_marksobtained"].ToString();
                txtmesem3totalmarks.Text = dt.Rows[0]["be_sem3_totalmarks"].ToString();
                txtmesem3agg.Text = dt.Rows[0]["be_sem3_agg"].ToString();
                txtmesem4complitionmonth.Text = dt.Rows[0]["be_sem1_complitionmonth"].ToString();
                txtmesem4complitionyear.Text = dt.Rows[0]["be_sem4_complitionyear"].ToString();
                txtmesem4marksobtained.Text = dt.Rows[0]["be_sem4_marksobtained"].ToString();
                txtmesem4totalmarks.Text = dt.Rows[0]["be_sem4_totalmarks"].ToString();
                txtmesem4agg.Text = dt.Rows[0]["be_sem4_agg"].ToString();
                txtlivekt.Text = dt.Rows[0]["live_kts"].ToString();
                txtdeadkt.Text = dt.Rows[0]["dead_kts"].ToString();
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');window.location='login.aspx';", true);
        }
        finally
        {
            dt.Clear();
            dt.Dispose();
            adp.Dispose();
        }
    }

    protected void ddsscboard_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            var sscpanel = ddsscboard.SelectedItem.Text;
            panelshow(sscpanel);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }
    }

    public void panelshow(string sscpanel)
    {
        if (sscpanel == "Not Applicable")
            panelx.Visible = false;
        else
            panelx.Visible = true;
    }


    protected void ddhscboard_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddhscboard.SelectedItem.Text == "Not Applicable")
        {
            panelxii.Visible = false;
        }
        else
            panelxii.Visible = true;
    }

    protected void dddipboard_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dddipboard.SelectedItem.Text == "Not Applicable")
        {
            paneldiploma.Visible = false;
        }
        else
            paneldiploma.Visible = true;
    }

    protected void ddbesem1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddbesem1.SelectedItem.Text == "Not Applicable")
        {
            panelbesem1.Visible = false;
        }
        else
            panelbesem1.Visible = true;
    }

    protected void ddbesem2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddbesem2.SelectedItem.Text == "Not Applicable")
        {
            panelbesem2.Visible = false;
        }
        else
            panelbesem2.Visible = true;
    }


    protected void ddmeapplicalbe_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddmeapplicalbe.SelectedItem.Text == "Not Applicable")
        {
            panelmesem1.Visible = false;
            panelmesem2.Visible = false;
            panelmesem3.Visible = false;
            panelmesem4.Visible = false;
        }
        else
        {
            panelmesem1.Visible = true;
            panelmesem2.Visible = true;
            panelmesem3.Visible = true;
            panelmesem4.Visible = true;
        }
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            if (sscfile.HasFile)
            {
                var path1 = Server.MapPath("students_result\\" + sscfile.FileName);
                hscfile.SaveAs(path1);
            }
            if (hscfile.HasFile)
            {
                var path2 = Server.MapPath("students_result\\" + hscfile.FileName);
                hscfile.SaveAs(path2);
            }
            if (dipfile.HasFile)
            {
                var path3 = Server.MapPath("students_result\\" + dipfile.FileName);
                dipfile.SaveAs(path3);
            }
            if (besem1file.HasFile)
            {
                var path4 = Server.MapPath("students_result\\" + besem1file.FileName);
                besem1file.SaveAs(path4);
            }
            if (besem2file.HasFile)
            {
                var path5 = Server.MapPath("students_result\\" + besem2file.FileName);
                besem2file.SaveAs(path5);
            }
            if (besem3file.HasFile)
            {
                var path6 = Server.MapPath("students_result\\" + besem3file.FileName);
                besem3file.SaveAs(path6);
            }
            if (besem4file.HasFile)
            {
                var path7 = Server.MapPath("students_result\\" + besem4file.FileName);
                besem4file.SaveAs(path7);
            }
            if (besem5file.HasFile)
            {
                var path8 = Server.MapPath("students_result\\" + besem5file.FileName);
                besem5file.SaveAs(path8);
            }
            if (besem6file.HasFile)
            {
                var path9 = Server.MapPath("students_result\\" + besem6file.FileName);
                besem6file.SaveAs(path9);
            }
            if (besem7file.HasFile)
            {
                var path10 = Server.MapPath("students_result\\" + besem7file.FileName);
                besem7file.SaveAs(path10);
            }
            if (besem8file.HasFile)
            {
                var path11 = Server.MapPath("students_result\\" + besem8file.FileName);
                besem8file.SaveAs(path11);
            }
            if (mesem1file.HasFile)
            {
                var path12 = Server.MapPath("students_result\\" + mesem1file.FileName);
                mesem1file.SaveAs(path12);
            }
            if (mesem2file.HasFile)
            {
                var path13 = Server.MapPath("students_result\\" + mesem2file.FileName);
                mesem2file.SaveAs(path13);
            }
            if (mesem3file.HasFile)
            {
                var path14 = Server.MapPath("students_result\\" + mesem3file.FileName);
                mesem3file.SaveAs(path14);
            }
            if (mesem4file.HasFile)
            {
                var path15 = Server.MapPath("students_result\\" + mesem4file.FileName);
                mesem4file.SaveAs(path15);
            }
            con.Open();
            var sql =
                "UPDATE [student] SET x_board=@x_board,x_school=@x_school,x_complitionmonth=@x_complitionmonth,x_complitionyear=@x_complitionyear,x_marksobtained=@x_marksobtained,x_totalmarks=@x_totalmarks,ssc_agg=@ssc_agg,x_file=@x_file,ssc_best_five_agg=@ssc_best_five_agg," +
                "xii_board=@xii_board,xii_college=@xii_college,xii_complitionmonth=@xii_complitionmonth,xii_complitionyear=@xii_complitionyear,xii_marksobtained=@xii_marksobtained,xii_totalmarks=@xii_totalmarks,hsc_agg=@hsc_agg,xii_file=@xii_file,cet_aieee=@cet_aieee," +
                "dip_board=@dip_board,dip_college=@dip_college,dip_complitionmonth=@dip_complitionmonth,dip_complitionyear=@dip_complitionyear,dip_marksobtained=@dip_marksobtained,dip_totalmarks=@dip_totalmarks,dip_agg=@dip_agg,dip_file=@dip_file,final_dip_agg=@final_dip_agg," +
                "be_university=@be_university,be_college=@be_college,be_sem1_applicable=@be_sem1_applicable,be_sem2_applicable=@be_sem2_applicable,me_applicable=@me_applicable,year=@year," +
                "be_sem1_complitionmonth=@be_sem1_complitionmonth,be_sem1_complitionyear=@be_sem1_complitionyear,be_sem1_marksobtained=@be_sem1_marksobtained,be_sem1_totalmarks=@be_sem1_totalmarks,be_sem1_agg=@be_sem1_agg,be_sem1_file=@be_sem1_file," +
                "be_sem2_complitionmonth=@be_sem2_complitionmonth,be_sem2_complitionyear=@be_sem2_complitionyear,be_sem2_marksobtained=@be_sem2_marksobtained,be_sem2_totalmarks=@be_sem2_totalmarks,be_sem2_agg=@be_sem2_agg,be_sem2_file=@be_sem2_file," +
                "be_sem3_complitionmonth=@be_sem3_complitionmonth,be_sem3_complitionyear=@be_sem3_complitionyear,be_sem3_marksobtained=@be_sem3_marksobtained,be_sem3_totalmarks=@be_sem3_totalmarks,be_sem3_agg=@be_sem3_agg,be_sem3_file=@be_sem3_file," +
                "be_sem4_complitionmonth=@be_sem4_complitionmonth,be_sem4_complitionyear=@be_sem4_complitionyear,be_sem4_marksobtained=@be_sem4_marksobtained,be_sem4_totalmarks=@be_sem4_totalmarks,be_sem4_agg=@be_sem4_agg,be_sem4_file=@be_sem4_file," +
                "be_sem5_complitionmonth=@be_sem5_complitionmonth,be_sem5_complitionyear=@be_sem5_complitionyear,be_sem5_marksobtained=@be_sem5_marksobtained,be_sem5_totalmarks=@be_sem5_totalmarks,be_sem5_agg=@be_sem5_agg,be_sem5_file=@be_sem5_file," +
                "be_sem6_complitionmonth=@be_sem6_complitionmonth,be_sem6_complitionyear=@be_sem6_complitionyear,be_sem6_marksobtained=@be_sem6_marksobtained,be_sem6_totalmarks=@be_sem6_totalmarks,be_sem6_agg=@be_sem6_agg,be_sem6_file=@be_sem6_file," +
                "be_sem7_complitionmonth=@be_sem7_complitionmonth,be_sem7_complitionyear=@be_sem7_complitionyear,be_sem7_marksobtained=@be_sem7_marksobtained,be_sem7_totalmarks=@be_sem7_totalmarks,be_sem7_agg=@be_sem7_agg,be_sem7_file=@be_sem7_file," +
                "be_sem8_complitionmonth=@be_sem8_complitionmonth,be_sem8_complitionyear=@be_sem8_complitionyear,be_sem8_marksobtained=@be_sem8_marksobtained,be_sem8_totalmarks=@be_sem8_totalmarks,be_sem8_agg=@be_sem8_agg,be_sem8_file=@be_sem8_file,be_agg=@be_agg," +
                "me_sem1_complitionmonth=@me_sem1_complitionmonth,me_sem1_complitionyear=@me_sem1_complitionyear,me_sem1_marksobtained=@me_sem1_marksobtained,me_sem1_totalmarks=@me_sem1_totalmarks,me_sem1_agg=@me_sem1_agg,me_sem1_file=@me_sem1_file," +
                "me_sem2_complitionmonth=@me_sem2_complitionmonth,me_sem2_complitionyear=@me_sem2_complitionyear,me_sem2_marksobtained=@me_sem2_marksobtained,me_sem2_totalmarks=@me_sem2_totalmarks,me_sem2_agg=@me_sem2_agg,me_sem2_file=@me_sem2_file," +
                "me_sem3_complitionmonth=@me_sem3_complitionmonth,me_sem3_complitionyear=@me_sem3_complitionyear,me_sem3_marksobtained=@me_sem3_marksobtained,me_sem3_totalmarks=@me_sem3_totalmarks,me_sem3_agg=@me_sem3_agg,me_sem3_file=@me_sem3_file," +
                "me_sem4_complitionmonth=@me_sem4_complitionmonth,me_sem4_complitionyear=@me_sem4_complitionyear,me_sem4_marksobtained=@me_sem4_marksobtained,me_sem4_totalmarks=@me_sem4_totalmarks,me_sem4_agg=@me_sem4_agg,me_sem4_file=@me_sem4_file," +
                "live_kts=@live_kts,dead_kts=@dead_kts where (email=@email)";

            using (var cmd = new SqlCommand(sql, con))
            {
                cmd.Parameters.AddWithValue("@be_agg", txtbeagg.Text.Trim());
                cmd.Parameters.AddWithValue("@final_dip_agg", txtdip_final_year.Text.Trim());
                cmd.Parameters.AddWithValue("@ssc_best_five_agg", txtbest_five.Text.Trim());
                cmd.Parameters.AddWithValue("@cet_aieee", txtcetaieee.Text.Trim());
                cmd.Parameters.AddWithValue("@x_board", ddsscboard.Text.Trim());
                cmd.Parameters.AddWithValue("@x_school", txtsscschool.Text.Trim());
                cmd.Parameters.AddWithValue("@x_complitionmonth", txtssccomplitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@x_complitionyear", txtssccomplitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@x_marksobtained", txtsscmarksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@ssc_agg", txtsscagg.Text.Trim());
                cmd.Parameters.AddWithValue("@x_totalmarks", txtssctotalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@x_file", @"student result/" + sscfile.FileName);
                cmd.Parameters.AddWithValue("@xii_board", ddhscboard.Text.Trim());
                cmd.Parameters.AddWithValue("@xii_college", txthsccollege.Text.Trim());
                cmd.Parameters.AddWithValue("@xii_complitionmonth", txthsccomplitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@xii_complitionyear", txthsccomplitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@xii_marksobtained", txthscmarksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@xii_totalmarks", txthsctotalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@hsc_agg", txthscagg.Text.Trim());
                cmd.Parameters.AddWithValue("@xii_file", @"student result/" + sscfile.FileName);
                cmd.Parameters.AddWithValue("@dip_board", dddipboard.Text.Trim());
                cmd.Parameters.AddWithValue("@dip_college", txtdipcollege.Text.Trim());
                cmd.Parameters.AddWithValue("@dip_complitionmonth", txtdipcomplitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@dip_complitionyear", txtdipcomplitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@dip_marksobtained", txtdipmarksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@dip_totalmarks", txtdiptotalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@dip_agg", txtdipagg.Text.Trim());
                cmd.Parameters.AddWithValue("@dip_file", @"student result/" + dipfile.FileName);
                cmd.Parameters.AddWithValue("@be_university", ddbeuniversity.Text.Trim());
                cmd.Parameters.AddWithValue("@year", ddyear.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@be_college", ddyear.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem1_applicable", ddbesem1.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem2_applicable", ddbesem2.Text.Trim());
                cmd.Parameters.AddWithValue("@me_applicable", ddmeapplicalbe.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem1_complitionmonth", txtbesem1complitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem1_complitionyear", txtbesem1complitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem1_marksobtained", txtbesem1marksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem1_totalmarks", txtbesem1totalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem1_agg", txtbesem2agg.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem1_file", @"student result/" + besem1file.FileName);
                cmd.Parameters.AddWithValue("@be_sem2_complitionmonth", txtbesem2complitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem2_complitionyear", txtbesem2complitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem2_marksobtained", txtbesem2marksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem2_totalmarks", txtbesem2totalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem2_agg", txtbesem2agg.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem2_file", @"student result/" + besem2file.FileName);
                cmd.Parameters.AddWithValue("@be_sem3_complitionmonth", txtbesem3complitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem3_complitionyear", txtbesem3complitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem3_marksobtained", txtbesem3markobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem3_totalmarks", txtbesem3totalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem3_agg", txtbesem3agg.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem3_file", @"student result/" + besem3file.FileName);
                cmd.Parameters.AddWithValue("@be_sem4_complitionmonth", txtbesem4complitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem4_complitionyear", txtbesem4complitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem4_marksobtained", txtbesem4marksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem4_totalmarks", txtbesem4totalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem4_agg", txtbesem4agg.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem4_file", @"student result/" + besem4file.FileName);
                cmd.Parameters.AddWithValue("@be_sem5_complitionmonth", txtbesem5complitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem5_complitionyear", txtbesem5complitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem5_marksobtained", txtbesem5marksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem5_totalmarks", txtbesem5totalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem5_agg", txtbesem5agg.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem5_file", @"student result/" + besem5file.FileName);
                cmd.Parameters.AddWithValue("@be_sem6_complitionmonth", txtbesem6complitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem6_complitionyear", txtbesem6complitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem6_marksobtained", txtbesem6marksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem6_totalmarks", txtbesem6totalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem6_agg", txtbesem6agg.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem6_file", @"student result/" + besem6file.FileName);
                cmd.Parameters.AddWithValue("@be_sem7_complitionmonth", txtbesem7complitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem7_complitionyear", txtbesem7complitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem7_marksobtained", txtbesem7marksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem7_totalmarks", txtbesem7totalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem7_agg", txtbesem7agg.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem7_file", @"student result/" + besem7file.FileName);
                cmd.Parameters.AddWithValue("@be_sem8_complitionmonth", txtbesem8complitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem8_complitionyear", txtbesem8complitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem8_marksobtained", txtbesem8marksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem8_totalmarks", txtbesem8totalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem8_agg", txtbesem8agg.Text.Trim());
                cmd.Parameters.AddWithValue("@be_sem8_file", @"student result/" + besem8file.FileName);
                cmd.Parameters.AddWithValue("@me_sem1_complitionmonth", txtmesem1complitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem1_complitionyear", txtmesem1complitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem1_marksobtained", txtmesem1marksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem1_totalmarks", txtmesem1totalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem1_agg", txtmesem2agg.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem1_file", @"student result/" + mesem1file.FileName);
                cmd.Parameters.AddWithValue("@me_sem2_complitionmonth", txtmesem2complitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem2_complitionyear", txtmesem2complitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem2_marksobtained", txtmesem2marksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem2_totalmarks", txtmesem2totalmarksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem2_agg", txtmesem2agg.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem2_file", @"student result/" + mesem2file.FileName);
                cmd.Parameters.AddWithValue("@me_sem3_complitionmonth", txtmesem3complitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem3_complitionyear", txtmesem3complitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem3_marksobtained", txtmesem3marksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem3_totalmarks", txtmesem3totalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem3_agg", txtmesem3agg.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem3_file", @"student result/" + mesem3file.FileName);
                cmd.Parameters.AddWithValue("@me_sem4_complitionmonth", txtmesem4complitionmonth.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem4_complitionyear", txtmesem4complitionyear.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem4_marksobtained", txtmesem4marksobtained.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem4_totalmarks", txtmesem4totalmarks.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem4_agg", txtmesem4agg.Text.Trim());
                cmd.Parameters.AddWithValue("@me_sem4_file", @"student result/" + mesem4file.FileName);
                cmd.Parameters.AddWithValue("@live_kts", txtlivekt.Text.Trim());
                cmd.Parameters.AddWithValue("@dead_kts", txtdeadkt.Text.Trim());
                cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
                cmd.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(Page.GetType(), "Message",
                    "alert('Update Successfully');window.location='student_acadmic.aspx';", true);
            }
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Message",
                "alert('Error occured : " + ex.Message + "');", true);
        }
    }


    protected void txtssctotalmarks_OnTextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtsscmarksobtained.Text) && !string.IsNullOrEmpty(txtssctotalmarks.Text))
            txtsscagg.Text =
                (Convert.ToDouble(txtsscmarksobtained.Text) / Convert.ToDouble(txtssctotalmarks.Text) * 100).ToString();
    }


    protected void txthsctotalmarks_OnTextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txthscmarksobtained.Text) && !string.IsNullOrEmpty(txthsctotalmarks.Text))
            txthscagg.Text =
                (Convert.ToDouble(txthscmarksobtained.Text) / Convert.ToDouble(txthsctotalmarks.Text) * 100).ToString();
    }




    protected void txtbesem1totalmarks_OnTextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtbesem1marksobtained.Text) && !string.IsNullOrEmpty(txtbesem1totalmarks.Text))
            txtbesem1agg.Text =
                (Convert.ToDouble(txtbesem1marksobtained.Text)/Convert.ToDouble(txtbesem1totalmarks.Text)*100).ToString();
    }

    protected void txtdiptotalmarks_OnTextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtdipmarksobtained.Text) && !string.IsNullOrEmpty(txtdiptotalmarks.Text))
            txtdip_final_year.Text =
                (Convert.ToDouble(txtdipmarksobtained.Text) / Convert.ToDouble(txtdiptotalmarks.Text) * 100).ToString();
    }

   

    protected void txtbesem2totalmarks_OnTextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtbesem2marksobtained.Text) && !string.IsNullOrEmpty(txtbesem2totalmarks.Text))
            txtbesem2agg.Text =
                (Convert.ToDouble(txtbesem2marksobtained.Text) / Convert.ToDouble(txtbesem2totalmarks.Text) * 100).ToString();
    }

    protected void txtbesem3totalmarks_OnTextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtbesem3markobtained.Text) && !string.IsNullOrEmpty(txtbesem3totalmarks.Text))
            txtbesem3agg.Text =
                (Convert.ToDouble(txtbesem3markobtained.Text) / Convert.ToDouble(txtbesem3totalmarks.Text) * 100).ToString();
    }

    protected void txtbesem4totalmarks_OnTextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtbesem4marksobtained.Text) && !string.IsNullOrEmpty(txtbesem4totalmarks.Text))
            txtbesem4agg.Text =
                (Convert.ToDouble(txtbesem4marksobtained.Text) / Convert.ToDouble(txtbesem4totalmarks.Text) * 100).ToString();
    }

    protected void txtbesem5totalmarks_OnTextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtbesem5marksobtained.Text) && !string.IsNullOrEmpty(txtbesem5totalmarks.Text))
            txtbesem5agg.Text =
                (Convert.ToDouble(txtbesem5marksobtained.Text) / Convert.ToDouble(txtbesem5totalmarks.Text) * 100).ToString();
    }

    protected void txtbesem6totalmarks_OnTextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtbesem6marksobtained.Text) && !string.IsNullOrEmpty(txtbesem6totalmarks.Text))
            txtbesem6agg.Text =
                (Convert.ToDouble(txtbesem6marksobtained.Text) / Convert.ToDouble(txtbesem6totalmarks.Text) * 100).ToString();
    }

    protected void txtbesem7totalmarks_OnTextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtbesem7marksobtained.Text) && !string.IsNullOrEmpty(txtbesem7totalmarks.Text))
            txtbesem7agg.Text =
                (Convert.ToDouble(txtbesem7marksobtained.Text) / Convert.ToDouble(txtbesem7totalmarks.Text) * 100).ToString();
    }

    protected void txtbesem8totalmarks_OnTextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtbesem8marksobtained.Text) && !string.IsNullOrEmpty(txtbesem8totalmarks.Text))
            txtbesem8agg.Text =
                (Convert.ToDouble(txtbesem8marksobtained.Text) / Convert.ToDouble(txtbesem8totalmarks.Text) * 100).ToString();
       
    }

    
}