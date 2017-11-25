using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Web.UI;

//using ClosedXML.Excel;

public partial class masterdata : Page
{
    private readonly SqlConnection con =
        new SqlConnection(ConfigurationManager.ConnectionStrings["CampusConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        ddyear.Items.Insert(0, "-- Select --");
    }


    protected void ddyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        con.Open();
        var com =
            new SqlCommand(
                @"SELECT * from [student] where department='" + dddepartment.Text.Trim() + "' and year='" +
                ddyear.Text.Trim() + "';", con);
        SqlDataReader rd = null;
        rd = com.ExecuteReader();

        while (rd.Read())
        {
            var action = "";

            action += "<a href=\"studentdetail.aspx?email=" + rd.GetValue(13) +
                      "\"><i class=\"glyphicon glyphicon-upload\"></i></span></a>";
            Literal1.Text += @"<tr><td>" + rd.GetValue(1) + "\t" + rd.GetValue(2) + "\t" + rd.GetValue(3) + "</td><td>" +
                             rd.GetValue(4) + "</td><td>" + rd.GetValue(5) + "</td><td>" + rd.GetValue(6) + "</td><td>" +
                             rd.GetValue(7) + "</td><td>" + rd.GetValue(8) + "</td><td>" + rd.GetValue(10) + "</td><td>" +
                             rd.GetValue(11) + "</td><td>" + rd.GetValue(12) + "</td><td>" + rd.GetValue(13) +
                             "</td><td>" + rd.GetValue(16) + "</td><td>" + rd.GetValue(17) + "</td><td>" +
                             rd.GetValue(18) + "</td><td>" + rd.GetValue(19) + "</td><td>" + rd.GetValue(22) +
                             "</td><td>" + rd.GetValue(135) +
                             "</td><td>" + rd.GetValue(24) + "</td><td>" + rd.GetValue(25) + "</td><td>" +
                             rd.GetValue(26) + "</td><td>" + rd.GetValue(27) + "</td><td>" + rd.GetValue(30) +
                             "</td><td>" + rd.GetValue(136) + "</td><td>" + rd.GetValue(32) + "</td><td>" +
                             rd.GetValue(33) + "</td><td>" + rd.GetValue(34) + "</td><td>" + rd.GetValue(35) +
                             "</td><td>" + rd.GetValue(38) + "</td><td>" + rd.GetValue(137) + "</td><td>" +
                             rd.GetValue(40) + "</td><td>" + rd.GetValue(41) + "</td><td>" + rd.GetValue(7) +
                             "</td><td>" + rd.GetValue(49) + "</td><td>" + rd.GetValue(55) + "</td><td>" +
                             rd.GetValue(61) + "</td><td>" + rd.GetValue(67) + "</td><td>" + rd.GetValue(73) +
                             "</td><td>" + rd.GetValue(79) + "</td><td>" + rd.GetValue(85) + "</td><td>" +
                             rd.GetValue(91) + "</td><td>" + rd.GetValue(138) + "</td><td>" + rd.GetValue(97) +
                             "</td><td>" + rd.GetValue(103) + "</td><td>" + rd.GetValue(109) + "</td><td>" +
                             rd.GetValue(115) + "</td><td>" +
                             rd.GetValue(139) + "</td><td>" +
                             rd.GetValue(140) + "</td><td>" +
                             rd.GetValue(141) + "</td><td>" +
                             rd.GetValue(142) + "</td><td>" +
                             rd.GetValue(143) + "</td><td>" +
                             rd.GetValue(144) + "</td><td>" +
                             rd.GetValue(145) + "</td><td>" +
                             rd.GetValue(146) + "</td><td>" +
                             rd.GetValue(147) + "</td><td>" +
                             rd.GetValue(148) + "</td><td>" +
                             rd.GetValue(118) + "</td><td>" +
                             rd.GetValue(119) + "</td><td>" +
                             rd.GetValue(117) + "</td><td class=\"toolbar\">" + action + "</td></tr>";
        }
        con.Close();
        table1.Visible = true;
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