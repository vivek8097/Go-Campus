<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="Exit_Interview.aspx.cs" Inherits="Exit_Interview" %>

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
        <table runat="server" style="">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <EmptyItemTemplate>
        <td runat="server" />
    </EmptyItemTemplate>
   
    
    <ItemTemplate>
        <div class="fa-file-video-o" align="center">
                   <iframe width="1000" height="500" src="<%#Eval("exit_interview_link")%>" frameborder="0" allowfullscreen></iframe>
                    <br/>
    </ItemTemplate>
   
   
    </asp:ListView>
            </div>
         </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [exit_interview_link] FROM [campany] WHERE ([campany_name] = @campany_name)">
        <SelectParameters>
            <asp:SessionParameter Name="campany_name" SessionField="campany_name" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
