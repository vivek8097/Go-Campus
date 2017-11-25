<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_campus_team.aspx.cs" Inherits="add_campus_team" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">


    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Campany</h1>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Campany Details
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">


                            <div class="form-group">
                                <label>Name</label>
                                <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Department</label>

                                <asp:DropDownList ID="dddepartment" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="department" DataValueField="department">
                                </asp:DropDownList>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [department] FROM [dep_mast]"></asp:SqlDataSource>
                            </div>
                            <div class="form-group">
                                <label>Designation</label>
                                <asp:TextBox ID="txtdesignation" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Phone No.</label>
                                <asp:TextBox ID="txtphone_num" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label>Person Image</label>
                                <asp:FileUpload ID="person_image_file" runat="server"/>
                            </div>


                        </div>
                        <!-- /.col-lg-6 (nested) -->
                    </div>
                    <!-- /.row (nested) -->
                </div>

                <asp:Button id="btninsert" Text="Insert" OnClick="btninsert_OnClick" runat="server" CssClass="btn btn-default"></asp:Button>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
</asp:Content>