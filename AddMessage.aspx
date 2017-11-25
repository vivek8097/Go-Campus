<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AddMessage.aspx.cs" Inherits="AddMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Add Notifications</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Notification Panel
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">

                            <div class="form-group">
                                <label>Header</label>
                                <asp:TextBox ID="txtheader" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Message</label>
                                <asp:TextBox ID="txtmessage" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Link</label>
                                <asp:TextBox ID="txtlink" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>


                            <asp:Button ID="btnadd" Text="Add Notifications" CssClass="btn btn-default" OnClick="btnadd_Click" runat="server"/>
                            <asp:Button ID="btnreset" Text="Reset" CssClass="btn btn-default" runat="server"/>
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