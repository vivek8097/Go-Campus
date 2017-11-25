<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="career.aspx.cs" Inherits="career" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
     <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Career</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
   
           
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                 
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                  
                    <ItemTemplate>
                       <div class="panel panel-default">
    
                                <div class="panel-body">
                        <asp:Label ID="link_headLabel" runat="server" Text='<%# Eval("link_head") %>'  Font-Size="Larger" Font-Bold="True" /></br>
                        <br />
                      
                        <asp:Label ID="link_descrLabel" runat="server" Text='<%# Eval("link_descr") %>' Font-Size="Medium" />
                        
                     
                      <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#Eval("link") %>' Target="_blank" runat="server">Read More</asp:HyperLink>
                        <br />
<br />              
                                    </div>
                           </div>

                    </ItemTemplate>
                   
                   
                </asp:ListView>
           
         
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [link_head], [link_descr], [link] FROM [career] WHERE ([department] = @department)">
                    <SelectParameters>
                        <asp:SessionParameter Name="department" SessionField="depart" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
           
   
  
   
</asp:Content>