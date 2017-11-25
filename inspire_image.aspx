<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="inspire_image.aspx.cs" Inherits="inspire_image" %>

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
                        <div class="col-lg-12 col-md-12">
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="3">


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
                                    <div class="col-xs-12 col-sm-4 col-md-4">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image_link") %>' Width="230" Height="230" BorderStyle="Solid" CssClass="img-responsive"/>
                                        <br/>
                                        <asp:Label ID="content_imageLabel" runat="server" Text='<%# Eval("image_head") %>' Font-Bold="True" Font-Size="Medium"/>
                                        <br/>
                                    </div>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <table runat="server">
                                        <tr runat="server">
                                            <td runat="server">
                                                <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                                    <tr id="groupPlaceholder" runat="server">
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr runat="server">
                                            <td runat="server" style=""></td>
                                        </tr>
                                    </table>
                                </LayoutTemplate>

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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [image_head], [image_link] FROM [inspire] WHERE ([type] = @type)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Image" Name="type" Type="String"/>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>