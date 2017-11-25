using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Web.UI;

public partial class eligiblestudent : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnget_Click(object sender, EventArgs e)
    {
        con.Open();
      
        var com =
            new SqlCommand(
                @"select * from [student] where ssc_agg >='" + txtsscpercentage.Value + "' and dip_agg >='" +
                txtdippercentage.Value + "' and be_sem3_agg >='" + txtbesem3per.Value + "' and be_sem4_agg >='" +
                txtbesem4per.Value + "' and be_sem5_agg >='" + txtbesem5per.Value + "' and be_sem6_agg >='" +
                txtbesem6per.Value + "' and be_sem7_agg >='" + txtbesem7per.Value + "' and be_sem8_agg >='" +
                txtbesem8per.Value + "' and y_gap <='" + txtygap.Value + "' and live_kts <='" + txtlivekts.Value +
                "' and dead_kts <='" + txtdeadkts.Value + "';", con);
        SqlDataReader rd = null;
        rd = com.ExecuteReader();
       
        while (rd.Read())
        {
          
            var action = "";
            if (rd.GetValue(24).ToString() == "Not Applicable")
            {
               
                action += "<a href=\"studentdetail.aspx?email=" + rd.GetValue(13) +
                          "\"><i class=\"glyphicon glyphicon-upload\"></i></span></a>";
                Literal1.Text += @"<tr><td>" + rd.GetValue(1) + "\t" + rd.GetValue(2) + "\t" + rd.GetValue(3) +
                                 "</td><td>" + rd.GetValue(6) + "</td><td>" + rd.GetValue(7) + "</td><td>" +
                                 rd.GetValue(8) + "</td><td>" + rd.GetValue(10) + "</td><td>" + rd.GetValue(13) +
                                 "</td><td>" + rd.GetValue(22) + "</td><td>" + rd.GetValue(30) + "</td><td>" +
                                 rd.GetValue(38) + "</td><td>" + rd.GetValue(40) + "</td><td>" + rd.GetValue(41) +
                                 "</td><td>" + rd.GetValue(49) + "</td><td>" + rd.GetValue(55) + "</td><td>" +
                                 rd.GetValue(61) + "</td><td>" + rd.GetValue(67) + "</td><td>" + rd.GetValue(73) +
                                 "</td><td>" + rd.GetValue(79) + "</td><td>" + rd.GetValue(85) + "</td><td>" +
                                 rd.GetValue(91) + "</td><td>" + rd.GetValue(97) + "</td><td>" + rd.GetValue(103) +
                                 "</td><td>" + rd.GetValue(109) + "</td><td>" + rd.GetValue(115) + "</td><td>" +
                                 rd.GetValue(118) + "</td><td>" + rd.GetValue(119) + "</td><td>" + rd.GetValue(117) +
                                 "</td><td class=\"toolbar\">" + action + "</td></tr>";
            }
           
        }
        con.Close();


        con.Open();
       
        var com1 =
            new SqlCommand(
                @"select * from [student] where ssc_agg >='" + txtsscpercentage.Value + "' and hsc_agg >='" +
                txthscpercentage.Value + "' and be_sem1_agg >='" + txtbesem1per.Value + "' and be_sem2_agg >='" +
                txtbesem2per.Value + "' and be_sem3_agg >='" + txtbesem3per.Value + "' and be_sem4_agg >='" +
                txtbesem4per.Value + "' and be_sem5_agg >='" + txtbesem5per.Value + "' and be_sem6_agg >='" +
                txtbesem6per.Value + "' and be_sem7_agg >='" + txtbesem7per.Value + "' and be_sem8_agg >='" +
                txtbesem8per.Value + "' and y_gap <='" + txtygap.Value + "' and live_kts <='" + txtlivekts.Value +
                "' and dead_kts <='" + txtdeadkts.Value + "';", con);
        SqlDataReader rd1 = null;
        rd1 = com1.ExecuteReader();

        while (rd1.Read())
        {
          
            var action = "";
            if (rd1.GetValue(32).ToString() == "Not Applicable")
            {
              
                action += "<a href=\"studentdetail.aspx?email=" + rd1.GetValue(13) +
                          "\"><i class=\"glyphicon glyphicon-upload\"></i></span></a>";
                Literal1.Text += @"<tr><td>" + rd1.GetValue(1) + "\t" + rd1.GetValue(2) + "\t" + rd1.GetValue(3) +
                                 "</td><td>" + rd1.GetValue(6) + "</td><td>" + rd1.GetValue(7) + "</td><td>" +
                                 rd1.GetValue(8) + "</td><td>" + rd1.GetValue(10) + "</td><td>" + rd1.GetValue(13) +
                                 "</td><td>" + rd1.GetValue(22) + "</td><td>" + rd1.GetValue(30) + "</td><td>" +
                                 rd1.GetValue(38) + "</td><td>" + rd1.GetValue(40) + "</td><td>" + rd1.GetValue(41) +
                                 "</td><td>" + rd1.GetValue(49) + "</td><td>" + rd1.GetValue(55) + "</td><td>" +
                                 rd1.GetValue(61) + "</td><td>" + rd1.GetValue(67) + "</td><td>" + rd1.GetValue(73) +
                                 "</td><td>" + rd1.GetValue(79) + "</td><td>" + rd1.GetValue(85) + "</td><td>" +
                                 rd1.GetValue(91) + "</td><td>" + rd1.GetValue(97) + "</td><td>" + rd1.GetValue(103) +
                                 "</td><td>" + rd1.GetValue(109) + "</td><td>" + rd1.GetValue(115) + "</td><td>" +
                                 rd1.GetValue(118) + "</td><td>" + rd1.GetValue(119) + "</td><td>" + rd1.GetValue(117) +
                                 "</td><td class=\"toolbar\">" + action + "</td></tr>";
            }
           
        }
        con.Close();


        con.Open();
       
        var com2 =
            new SqlCommand(
                @"select * from [student] where ssc_agg >='" + txtsscpercentage.Value + "' and hsc_agg >='" +
                txthscpercentage.Value + "' and dip_agg>='" + txtdippercentage.Value + "' and be_sem3_agg >='" +
                txtbesem3per.Value + "' and be_sem4_agg >='" + txtbesem4per.Value + "' and be_sem5_agg >='" +
                txtbesem5per.Value + "' and be_sem6_agg >='" + txtbesem6per.Value + "' and be_sem7_agg >='" +
                txtbesem7per.Value + "' and be_sem8_agg >='" + txtbesem8per.Value + "' and y_gap <='" + txtygap.Value +
                "' and live_kts <='" + txtlivekts.Value + "' and dead_kts <='" + txtdeadkts.Value + "';", con);
        SqlDataReader rd2 = null;
        rd2 = com2.ExecuteReader();
        while (rd2.Read())
        {
            if (rd2.GetValue(24).ToString() == "HSC" && rd2.GetValue(32).ToString() == "MSBTE")
            {
               
                var action = "";
               
                action += "<a href=\"studentdetail.aspx?email=" + rd2.GetValue(13) +
                          "\"><i class=\"glyphicon glyphicon-upload\"></i></span></a>";
                Literal1.Text += @"<tr><td>" + rd2.GetValue(1) + "\t" + rd2.GetValue(2) + "\t" + rd2.GetValue(3) +
                                 "</td><td>" + rd2.GetValue(6) + "</td><td>" + rd2.GetValue(7) + "</td><td>" +
                                 rd2.GetValue(8) + "</td><td>" + rd2.GetValue(10) + "</td><td>" + rd2.GetValue(13) +
                                 "</td><td>" + rd2.GetValue(22) + "</td><td>" + rd2.GetValue(30) + "</td><td>" +
                                 rd2.GetValue(38) + "</td><td>" + rd2.GetValue(40) + "</td><td>" + rd2.GetValue(41) +
                                 "</td><td>" + rd2.GetValue(49) + "</td><td>" + rd2.GetValue(55) + "</td><td>" +
                                 rd2.GetValue(61) + "</td><td>" + rd2.GetValue(67) + "</td><td>" + rd2.GetValue(73) +
                                 "</td><td>" + rd2.GetValue(79) + "</td><td>" + rd2.GetValue(85) + "</td><td>" +
                                 rd2.GetValue(91) + "</td><td>" + rd2.GetValue(97) + "</td><td>" + rd2.GetValue(103) +
                                 "</td><td>" + rd2.GetValue(109) + "</td><td>" + rd2.GetValue(115) + "</td><td>" +
                                 rd2.GetValue(118) + "</td><td>" + rd2.GetValue(119) + "</td><td>" + rd2.GetValue(117) +
                                 "</td><td class=\"toolbar\">" + action + "</td></tr>";
               
            }
        }

        btnget.Visible = false;
        con.Close();
    }


    protected void btnexport_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/x-msexcel";
        Response.AddHeader("Content-Disposition", "attachment;filename = MasterData.xls");
        Response.ContentEncoding = Encoding.UTF8;
        var tw = new StringWriter();
        var hw = new HtmlTextWriter(tw);
        table1.RenderControl(hw);
        Response.Write(tw.ToString());
        Response.End();
        Response.Flush();
    }
}