<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="eligiblestudent.aspx.cs" Inherits="eligiblestudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Acadmic Detail</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>

    <div class="col-lg-12">
        <asp:Panel ID="panelx" runat="server" Class="panel panel-default">
            <div class="panel-heading">
                Class X
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">

                        <div class="form-group">
                            <label>SSC Percentage</label>
                            <input ID="txtsscpercentage" Class="form-control" runat="server">

                        </div>

                        <div class="form-group">
                            <label>HSC Percentage</label>
                            <input ID="txthscpercentage" Class="form-control" runat="server">

                        </div>
                        <div class="form-group">
                            <label>Diploma Percentage</label>
                            <input ID="txtdippercentage" Class="form-control" runat="server">

                        </div>
                        <div class="form-group">
                            <label>BE SEM 1 Percentage</label>
                            <input ID="txtbesem1per" Class="form-control" runat="server">
                        </div>
                        <div class="form-group">
                            <label>BE SEM 2 Percentage</label>
                            <input ID="txtbesem2per" Class="form-control" runat="server">
                        </div>
                        <div class="form-group">
                            <label>BE SEM 3 Percentage</label>
                            <input ID="txtbesem3per" Class="form-control" runat="server">
                        </div>
                        <div class="form-group">
                            <label>BE SEM 4 Percentage</label>
                            <input ID="txtbesem4per" Class="form-control" runat="server">
                        </div>
                        <div class="form-group">
                            <label>BE SEM 5 Percentage</label>
                            <input ID="txtbesem5per" Class="form-control" runat="server">
                        </div>
                        <div class="form-group">
                            <label>BE SEM 6 Percentage</label>
                            <input ID="txtbesem6per" Class="form-control" runat="server">
                        </div>
                        <div class="form-group">
                            <label>BE SEM 7 Percentage</label>
                            <input ID="txtbesem7per" Class="form-control" runat="server">
                        </div>
                        <div class="form-group">
                            <label>BE SEM 8 Percentage</label>
                            <input ID="txtbesem8per" Class="form-control" runat="server">
                        </div>
                        <div class="form-group">
                            <label>Year Gap</label>
                            <input ID="txtygap" Class="form-control" runat="server">
                        </div>
                        <div class="form-group">
                            <label>Live Kts</label>
                            <input ID="txtlivekts" Class="form-control" runat="server">
                        </div>
                        <div class="form-group">
                            <label>Dead Kts</label>
                            <input ID="txtdeadkts" Class="form-control" runat="server">
                        </div>

                        <div class="form-group">
                            <asp:Button ID="btnget" Text="Get Details" OnClick="btnget_Click" Class="btn btn-default" runat="server"/>

                        </div>
                    </div>
                    <!-- /.col-lg-6 (nested) -->
                </div>
                <!-- /.row (nested) -->
            </div>

        </asp:Panel>
        <!-- /.panel-body -->
    </div>
    <div style="overflow-x: auto; width: 1120px">
        <div class="dataTable_wrapper">
            <asp:table id="table1" runat="server" class="table table-striped table-bordered table-hover">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Student Name</asp:TableHeaderCell>


                    <asp:TableHeaderCell>Department</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Year</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Mobile Number</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Address</asp:TableHeaderCell>


                    <asp:TableHeaderCell>Email</asp:TableHeaderCell>

                    <asp:TableHeaderCell>SSC Percentage</asp:TableHeaderCell>

                    <asp:TableHeaderCell>HSC Percentage</asp:TableHeaderCell>

                    <asp:TableHeaderCell>Diploma Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE University</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE College</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM1 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM2 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM3 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM4 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM5 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM6 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM7 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>BE-SEM8 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>ME-SEM1 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>ME-SEM2 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>ME-SEM3 Percentage</asp:TableHeaderCell>
                    <asp:TableHeaderCell>ME-SEM4 Percentage</asp:TableHeaderCell>
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
                <asp:Button ID="btnexport" Text="Export" Class="btn btn-default" OnClick="btnexport_Click" runat="server"/>
            </div>
        </div>
    </div>


</asp:Content>