<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="studenthome.aspx.cs" Inherits="studenthome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">


    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Important Messages</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="coloum">
                <div class="col-lg-4">
                    <div class="panel panel-primary">

                        <div class="panel-heading">
                            <asp:Label ID="msg_headLabel" runat="server" Text='<%# Eval("msg_head") %>'/>
                        </div>
                        <div class="panel-body">
                            <asp:Label ID="msg_bodyLabel" runat="server" Text='<%# Eval("msg_body") %>'/>
                        </div>
                        <div class="panel-footer">
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#Eval("hyperlink") %>' Target="_blank" runat="server">Go to Detail</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [msg_head], [msg_body], [hyperlink] FROM [notification]"></asp:SqlDataSource>

</asp:Content>