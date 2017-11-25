<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addnewuser.aspx.cs" Inherits="addnewuser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Add New User</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                New User
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <form role="form">
                            <div class="form-group">
                                <label>Email</label>
                                <asp:TextBox ID="txtemail" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server"></asp:TextBox></br>
                                <asp:Button ID="btngenerate" Text="Generate Password" OnClick="btngenerate_Click" CssClass="btn btn-default" runat="server"/>
                            </div>
                            <div class="form-group">
                                <label>User Type</label>
                                <asp:DropDownList ID="ddutype" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="u_type" DataValueField="u_type">

                                </asp:DropDownList>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [u_type] FROM [user_type_mast]"></asp:SqlDataSource>

                            </div>

                        </form>
                        <asp:Button ID="btnadd" Text="Add User" CssClass="btn btn-default" OnClick="btnadd_Click" runat="server"/>
                       
                    </div>
                    <!-- /.col-lg-6 (nested) -->
                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
</asp:Content>