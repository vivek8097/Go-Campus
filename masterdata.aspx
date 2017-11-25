<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" EnableEventValidation="false" CodeFile="masterdata.aspx.cs" Inherits="masterdata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Add Notifications</h1>
        </div>
    </div>
    <div class="col-lg-12">
        <asp:Panel ID="panelx" runat="server" CssClass="panel panel-default">
            <div class="panel-heading">
                Class X
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>Select Department</label>
                            <asp:DropDownList ID="dddepartment" CssClass="form-control" AutoPostBack="True" runat="server" DataSourceID="SqlDataSource1" DataTextField="department" DataValueField="department">

                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [department] FROM [dep_mast]"></asp:SqlDataSource>
                        </div>
                        <div class="form-group">
                            <label>Select Year</label>
                            <asp:DropDownList ID="ddyear" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddyear_SelectedIndexChanged" runat="server">
                                <asp:ListItem>FE</asp:ListItem>
                                <asp:ListItem>SE</asp:ListItem>
                                <asp:ListItem>TE</asp:ListItem>
                                <asp:ListItem>BE</asp:ListItem>
                            </asp:DropDownList>
                        </div>


                    </div>
                    <!-- /.col-lg-6 (nested) -->
                </div>
                <!-- /.row (nested) -->
            </div>
        </asp:Panel>
        <!-- /.panel-body -->
    </div>

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Student List</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.panel-heading -->
    <div style="overflow-x: auto; width: 1120px">
        <div class="dataTable_wrapper">
            <asp:table id="table1" runat="server" Visible="false" class="table table-striped table-bordered table-hover">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Student Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Date Of Birth</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Gender</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Department</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Year</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Mobile Number</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Address</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Religion</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Cast</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                    <asp:TableHeaderCell>SSC Board</asp:TableHeaderCell>
                    <asp:TableHeaderCell>School Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>SSC Complition Month</asp:TableHeaderCell>
                    <asp:TableHeaderCell>SSC Complition Year</asp:TableHeaderCell>
                    <asp:TableHeaderCell>SSC Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>SSC Best of Five Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>HSC Board</asp:TableHeaderCell>
                    <asp:TableHeaderCell>College Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>HSC Complition Month</asp:TableHeaderCell>
                    <asp:TableHeaderCell>HSC Complition Year</asp:TableHeaderCell>
                    <asp:TableHeaderCell>HSC Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>CET/AIEEE</asp:TableHeaderCell>

                    <asp:TableHeaderCell>Diploma Board</asp:TableHeaderCell>
                    <asp:TableHeaderCell>College Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Diploma Complition Month</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Diploma Complition Year</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Diploma Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Diploma Final Year Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE University</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE College</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Year</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM1 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM2 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM3 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM4 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM5 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM6 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM7 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM8 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE Average</asp:TableHeaderCell>
                    <asp:TableHeaderCell>ME-SEM1 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>ME-SEM2 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>ME-SEM3 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>ME-SEM4 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Company Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Company Address</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Officer Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Officer Designation</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Officer Contact No.</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Relation with Officer</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Nature Of Training</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Hobbies</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Strength</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Weakness</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Live Kts</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Dead Kts</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Year Gap</asp:TableHeaderCell>
                    <asp:TableHeaderCell></asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:table>
            <div align="center">
            <asp:Button ID="btnexport" Text="Export" CssClass="btn btn-default" OnClick="btnexport_Click" runat="server"/>
                </div>
        </div>
    </div>


</asp:Content>