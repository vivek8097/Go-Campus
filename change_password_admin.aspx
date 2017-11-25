<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="change_password_admin.aspx.cs" Inherits="change_password_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
     <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Change Password</h1>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                   Change Password
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Email- ID</label>
                                <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" required></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Old Password</label>
                                <asp:TextBox ID="txtopassword" CssClass="form-control" runat="server" TextMode="Password" required></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>New Password</label>
                                <asp:TextBox ID="txtnewpassword" CssClass="form-control" runat="server" TextMode="Password" required></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <asp:TextBox ID="txtcpassword" CssClass="form-control" runat="server" TextMode="Password" required></asp:TextBox>

                            </div>
                           
                            <asp:Button ID="btnsubmit" Text="Submit" CssClass="btn btn-default" OnClick="btnsubmit_OnClick" runat="server"/>
                            

                        </div>
                        <!-- /.col-lg-6 (nested) -->
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>

</asp:Content>

