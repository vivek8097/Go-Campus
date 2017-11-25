<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="inspire_video.aspx.cs" Inherits="inspire_video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Videos</h1>
        </div>

    </div>
    <div class="panel panel-default">

        <div class="panel-body">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">


                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>

                <ItemTemplate>
                    <div align="center">
                        <asp:Label ID="content_headLabel" runat="server" Text='<%# Eval("video_head") %>' Font-Size="Large" Font-Bold="True"/>
                    </div>
                    <br/>
                    <div class="fa-file-video-o" align="center">
                   <iframe width="500" height="500" src="<%#Eval("video_link")%>" frameborder="0" allowfullscreen></iframe>
                    <br/>
                </ItemTemplate>


            </asp:ListView>
        </div>
    </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [video_head], [video_link] FROM [inspire] WHERE ([type] = @type)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Video" Name="type" Type="String"/>
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>