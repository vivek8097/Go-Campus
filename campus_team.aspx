<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="campus_team.aspx.cs" Inherits="campus_team" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Edit Additional Detail</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Student Personal Detail
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="5">
                                <EmptyDataTemplate>
                                    <table runat="server" style="">
                                        <tr>
                                            <td>No data was returned.</td>
                                        </tr>
                                    </table>
                                </EmptyDataTemplate>
                                <EmptyItemTemplate>
                                    <td runat="server"/>
                                </EmptyItemTemplate>
                                <GroupTemplate>
                                    <tr id="itemPlaceholderContainer" runat="server">
                                        <td id="itemPlaceholder" runat="server"></td>
                                    </tr>
                                </GroupTemplate>


                                <ItemTemplate>
                                    <div class="col-xs-12 col-sm-4 col-md-6">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' Width="230" Height="230" BorderStyle="Solid" CssClass="img-responsive"/>
                                        <br/>
                                        <asp:Label ID="NameLabel" align="center" Font-Bold="True" runat="server" Text='<%# Eval("Name") %>'/>
                                        <br/>
                                        <asp:Label ID="departmentLabel" runat="server" Text='<%# Eval("department") %>'/>
                                        <br/>
                                        <asp:Label ID="designationLabel" runat="server" Text='<%# Eval("designation") %>'/>
                                        <br/>
                                        <asp:Label ID="phone_noLabel" runat="server" Text='<%# Eval("phone_no") %>'/>
                                        <br/>
                                    </div>
                                </ItemTemplate>

                            </asp:ListView>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [image], [Name], [department], [designation], [phone_no] FROM [campus_team]"></asp:SqlDataSource>
</asp:Content>