<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="studentdetail.aspx.cs" Inherits="studentdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Student Detail</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    DataTables Advanced Tables
                </div>

                <!-- /.panel-heading -->
                <div id="collapse4" class="body">
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2">

                        <ItemTemplate>
                            </br>&nbsp;&nbsp; <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("photo") %>' Width="230" Height="230" BorderStyle="Solid" CssClass="img-circle"/>
                            </br>
                            <br/>

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [photo] FROM [student] WHERE ([email] = @email)">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="email" Name="email" QueryStringField="email" Type="String"/>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" CssClass="table table-striped table-bordered table-hover" HorizontalAlign="Center">

                        <Fields>

                            <asp:BoundField DataField="fname" HeaderText="First Name" SortExpression="fname"/>
                            <asp:BoundField DataField="mname" HeaderText="Middle Name" SortExpression="mname"/>
                            <asp:BoundField DataField="lname" HeaderText="Last Name" SortExpression="lname"/>
                            <asp:BoundField DataField="dob" HeaderText="Date of Birth" SortExpression="dob"/>
                            <asp:BoundField DataField="gender" HeaderText="Gendar" SortExpression="gender"/>
                            <asp:BoundField DataField="department" HeaderText="Department" SortExpression="department"/>
                            <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year"/>
                            <asp:BoundField DataField="mob_no" HeaderText="Mobile Number" SortExpression="mob_no"/>
                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address"/>
                            <asp:BoundField DataField="religion" HeaderText="Religion" SortExpression="religion"/>
                            <asp:BoundField DataField="cast" HeaderText="Cast" SortExpression="cast"/>
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email"/>
                            <asp:BoundField DataField="x_board" HeaderText="SSC Board" SortExpression="x_board"/>
                            <asp:BoundField DataField="x_complitionmonth" HeaderText="SSC Complition Month" SortExpression="x_complitionmonth"/>
                            <asp:BoundField DataField="x_complitionyear" HeaderText="SSC Complition Year" SortExpression="x_complitionyear"/>
                            <asp:BoundField DataField="x_marksobtained" HeaderText="SSC Marks Obtained" SortExpression="x_marksobtained"/>
                            <asp:BoundField DataField="x_totalmarks" HeaderText="SSC Total Marks" SortExpression="x_totalmarks"/>
                            <asp:BoundField DataField="ssc_agg" HeaderText="SSC Percentage" SortExpression="ssc_agg"/>
                            <asp:BoundField DataField="xii_board" HeaderText="HSC Board" SortExpression="xii_board"/>
                            <asp:BoundField DataField="xii_complitionmonth" HeaderText="HSC Complitio Month" SortExpression="xii_complitionmonth"/>
                            <asp:BoundField DataField="dip_marksobtained" HeaderText="Diploma Marks Obtained" SortExpression="dip_marksobtained"/>
                            <asp:BoundField DataField="xii_complitionyear" HeaderText="HSC Complition Year" SortExpression="xii_complitionyear"/>
                            <asp:BoundField DataField="xii_marksobtained" HeaderText="HSC Marks Obtained" SortExpression="xii_marksobtained"/>
                            <asp:BoundField DataField="xii_totalmarks" HeaderText="HSC Total Marks" SortExpression="xii_totalmarks"/>
                            <asp:BoundField DataField="hsc_agg" HeaderText="HSC Percentage" SortExpression="hsc_agg"/>
                            <asp:BoundField DataField="dip_board" HeaderText="Diploma Board" SortExpression="dip_board"/>
                            <asp:BoundField DataField="dip_complitionmonth" HeaderText="Diploma Complition Month" SortExpression="dip_complitionmonth"/>
                            <asp:BoundField DataField="dip_complitionyear" HeaderText="Diploma Complition Year" SortExpression="dip_complitionyear"/>
                            <asp:BoundField DataField="dip_totalmarks" HeaderText="Diploma Total Marks" SortExpression="dip_totalmarks"/>
                            <asp:BoundField DataField="dip_agg" HeaderText="Dip Aggregate" SortExpression="dip_agg"/>
                            <asp:BoundField DataField="be_university" HeaderText="BE University" SortExpression="be_university"/>
                            <asp:BoundField DataField="be_college" HeaderText="BE College" SortExpression="be_college"/>
                            <asp:BoundField DataField="be_sem1_applicable" HeaderText="BE Sem1 Applicable" SortExpression="be_sem1_applicable"/>
                            <asp:BoundField DataField="be_sem2_applicable" HeaderText="BE Sem2 Applicable" SortExpression="be_sem2_applicable"/>
                            <asp:BoundField DataField="be_sem2_complitionyear" HeaderText="BE Sem2 Completion Year" SortExpression="be_sem2_complitionyear"/>
                            <asp:BoundField DataField="me_applicable" HeaderText="ME Applicable" SortExpression="me_applicable"/>
                            <asp:BoundField DataField="be_sem1_complitionmonth" HeaderText="BE Sem1 Completion Month" SortExpression="be_sem1_complitionmonth"/>
                            <asp:BoundField DataField="be_sem1_complitionyear" HeaderText="BE Sem1 Completion Year" SortExpression="be_sem1_complitionyear"/>
                            <asp:BoundField DataField="be_sem1_marksobtained" HeaderText="BE Sem1 Marks Obtained" SortExpression="be_sem1_marksobtained"/>
                            <asp:BoundField DataField="be_sem1_totalmarks" HeaderText="BE Sem1 Total Marks" SortExpression="be_sem1_totalmarks"/>
                            <asp:BoundField DataField="be_sem1_agg" HeaderText="BE Sem1 Aggregate" SortExpression="be_sem1_agg"/>
                            <asp:BoundField DataField="be_sem2_complitionmonth" HeaderText="BE Sem2 Completion Month" SortExpression="be_sem2_complitionmonth"/>
                            <asp:BoundField DataField="be_sem2_marksobtained" HeaderText="BE Sem2 Marks OSbtained" SortExpression="be_sem2_marksobtained"/>
                            <asp:BoundField DataField="be_sem2_totalmarks" HeaderText="BE Sem2 Total Marks" SortExpression="be_sem2_totalmarks"/>
                            <asp:BoundField DataField="be_sem2_agg" HeaderText="BE Sem2 Aggregate" SortExpression="be_sem2_agg"/>
                            <asp:BoundField DataField="be_sem3_complitionmonth" HeaderText="BE Sem3 Completion Month" SortExpression="be_sem3_complitionmonth"/>
                            <asp:BoundField DataField="be_sem3_complitionyear" HeaderText="BE Sem3 Completion Year" SortExpression="be_sem3_complitionyear"/>
                            <asp:BoundField DataField="be_sem3_marksobtained" HeaderText="BE Sem3 Marks Obtained" SortExpression="be_sem3_marksobtained"/>
                            <asp:BoundField DataField="be_sem3_totalmarks" HeaderText="BE Sem3 Total Marks" SortExpression="be_sem3_totalmarks"/>
                            <asp:BoundField DataField="be_sem3_agg" HeaderText="BE Sem3 Aggregate" SortExpression="be_sem3_agg"/>
                            <asp:BoundField DataField="be_sem4_complitionmonth" HeaderText="BE Sem4 Completion Month" SortExpression="be_sem4_complitionmonth"/>
                            <asp:BoundField DataField="be_sem4_complitionyear" HeaderText="BE Sem4 Completion Year" SortExpression="be_sem4_complitionyear"/>
                            <asp:BoundField DataField="be_sem4_marksobtained" HeaderText="BE Sem4 Marks Obtained" SortExpression="be_sem4_marksobtained"/>
                            <asp:BoundField DataField="be_sem4_totalmarks" HeaderText="BE Sem4 Total Marks" SortExpression="be_sem4_totalmarks"/>
                            <asp:BoundField DataField="be_sem8_agg" HeaderText="BE Sem8 Aggregate" SortExpression="be_sem8_agg"/>
                            <asp:BoundField DataField="be_sem8_file" HeaderText="BE Sem8 File" SortExpression="be_sem8_file"/>
                            <asp:BoundField DataField="me_sem1_complitionmonth" HeaderText="ME Sem1 Completion Month" SortExpression="me_sem1_complitionmonth"/>
                            <asp:BoundField DataField="me_sem1_complitionyear" HeaderText="ME Sem1 Completion Year" SortExpression="me_sem1_complitionyear"/>
                            <asp:BoundField DataField="me_sem1_marksobtained" HeaderText="ME Sem1 Marks Obtained" SortExpression="me_sem1_marksobtained"/>
                            <asp:BoundField DataField="me_sem1_totalmarks" HeaderText="ME Sem1 Total Marks" SortExpression="me_sem1_totalmarks"/>
                            <asp:BoundField DataField="me_sem1_agg" HeaderText="ME Sem1 Aggregate" SortExpression="me_sem1_agg"/>
                            <asp:BoundField DataField="me_sem2_complitionmonth" HeaderText="ME Sem2 Completion Month" SortExpression="me_sem2_complitionmonth"/>
                            <asp:BoundField DataField="me_sem2_complitionyear" HeaderText="ME Sem2 Completion Year" SortExpression="me_sem2_complitionyear"/>
                            <asp:BoundField DataField="me_sem2_marksobtained" HeaderText="ME Sem2 Marks Obtained" SortExpression="me_sem2_marksobtained"/>
                            <asp:BoundField DataField="me_sem2_totalmarks" HeaderText="ME Sem2 Total Marks" SortExpression="me_sem2_totalmarks"/>
                            <asp:BoundField DataField="me_sem2_agg" HeaderText="ME Sem2 Aggregate" SortExpression="me_sem2_agg"/>
                            <asp:BoundField DataField="me_sem3_complitionmonth" HeaderText="Me Sem3 Completion Month" SortExpression="me_sem3_complitionmonth"/>
                            <asp:BoundField DataField="me_sem3_complitionyear" HeaderText="ME Sem3 Completion Year" SortExpression="me_sem3_complitionyear"/>
                            <asp:BoundField DataField="me_sem3_marksobtained" HeaderText="ME Sem3 Marks Obtained" SortExpression="me_sem3_marksobtained"/>
                            <asp:BoundField DataField="me_sem3_totalmarks" HeaderText="ME Sem3 Total Marks" SortExpression="me_sem3_totalmarks"/>
                            <asp:BoundField DataField="me_sem3_agg" HeaderText="ME Sem3 Aggregate" SortExpression="me_sem3_agg"/>
                            <asp:BoundField DataField="me_sem4_complitionmonth" HeaderText="ME Sem4 Completion Month" SortExpression="me_sem4_complitionmonth"/>
                            <asp:BoundField DataField="me_sem4_complitionyear" HeaderText="ME Sem4 Completion Year" SortExpression="me_sem4_complitionyear"/>
                            <asp:BoundField DataField="me_sem4_marksobtained" HeaderText="ME Sem4 Marks Obtained" SortExpression="me_sem4_marksobtained"/>
                            <asp:BoundField DataField="me_sem4_totalmarks" HeaderText="ME Sem4 Total Marks" SortExpression="me_sem4_totalmarks"/>
                            <asp:BoundField DataField="me_sem4_agg" HeaderText="ME Sem4 Aggregate" SortExpression="me_sem4_agg"/>
                            <asp:BoundField DataField="me_sem4_file" HeaderText="ME Sem4 File" SortExpression="me_sem4_file"/>
                            <asp:BoundField DataField="live_kts" HeaderText="live_kts" SortExpression="live_kts"/>
                            <asp:BoundField DataField="dead_kts" HeaderText="dead_kts" SortExpression="dead_kts"/>
                            <asp:BoundField DataField="c_lang" HeaderText="c_lang" SortExpression="c_lang"/>
                            <asp:BoundField DataField="cpp_lang" HeaderText="cpp_lang" SortExpression="cpp_lang"/>
                            <asp:BoundField DataField="java_lang" HeaderText="java_lang" SortExpression="java_lang"/>
                            <asp:BoundField DataField="python_lang" HeaderText="python_lang" SortExpression="python_lang"/>
                            <asp:BoundField DataField="career_objective" HeaderText="career_objective" SortExpression="career_objective"/>
                            <asp:BoundField DataField="acadmic" HeaderText="acadmic" SortExpression="acadmic"/>
                            <asp:BoundField DataField="certifications" HeaderText="certifications" SortExpression="certifications"/>
                            <asp:BoundField DataField="projectand_internship" HeaderText="projectand_internship" SortExpression="projectand_internship"/>
                            <asp:BoundField DataField="positionandresponsibility" HeaderText="positionandresponsibility" SortExpression="positionandresponsibility"/>
                        </Fields>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"/>
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"/>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center"/>
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"/>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [fname], [mname], [lname], [dob], [gender], [department], [year], [mob_no], [address], [religion], [cast], [email], [x_board], [x_complitionmonth], [x_complitionyear], [x_marksobtained], [x_totalmarks], [ssc_agg], [xii_board], [xii_complitionmonth], [dip_marksobtained], [xii_complitionyear], [xii_marksobtained], [xii_totalmarks], [hsc_agg], [dip_board], [dip_complitionmonth], [dip_complitionyear], [dip_totalmarks], [dip_agg], [be_university], [be_college], [be_sem1_applicable], [be_sem2_applicable], [be_sem2_complitionyear], [me_applicable], [be_sem1_complitionmonth], [be_sem1_complitionyear], [be_sem1_marksobtained], [be_sem1_totalmarks], [be_sem1_agg], [be_sem2_complitionmonth], [be_sem2_marksobtained], [be_sem2_totalmarks], [be_sem2_agg], [be_sem3_complitionmonth], [be_sem3_complitionyear], [be_sem3_marksobtained], [be_sem3_totalmarks], [be_sem3_agg], [be_sem4_complitionmonth], [be_sem4_complitionyear], [be_sem4_marksobtained], [be_sem4_totalmarks], [be_sem8_agg], [be_sem8_file], [me_sem1_complitionmonth], [me_sem1_complitionyear], [me_sem1_marksobtained], [me_sem1_totalmarks], [me_sem1_agg], [me_sem2_complitionmonth], [me_sem2_complitionyear], [me_sem2_marksobtained], [me_sem2_totalmarks], [me_sem2_agg], [me_sem3_complitionmonth], [me_sem3_complitionyear], [me_sem3_marksobtained], [me_sem3_totalmarks], [me_sem3_agg], [me_sem4_complitionmonth], [me_sem4_complitionyear], [me_sem4_marksobtained], [me_sem4_totalmarks], [me_sem4_agg], [me_sem4_file], [live_kts], [dead_kts], [c_lang], [cpp_lang], [java_lang], [python_lang], [career_objective], [acadmic], [certifications], [projectand_internship], [positionandresponsibility],[photo] FROM [student] WHERE ([email] = @email)">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="email" Name="email" QueryStringField="email" Type="String"/>
                        </SelectParameters>
                    </asp:SqlDataSource>

                </div>
            </div>
        </div>
    </div>

</asp:Content>