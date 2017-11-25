<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="update_delete_career.aspx.cs" Inherits="update_delete_career" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Career</h1>
        </div>

    </div>
   
    
                <div class="form-group">
                <asp:DropDownList ID="dddepartment" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="department" DataValueField="department" AutoPostBack="True"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [department] FROM [dep_mast]"></asp:SqlDataSource>
                    </div>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                 
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
                                    <div align="center">
                                     <asp:HyperLink ID="deleteandupdate" NavigateUrl='<%# Eval("Id", "~/delete_update_career.aspx?Id={0}") %>' runat="server">Delete and Update</asp:HyperLink>
<br />                                  </div>
                                    </div>
                           
                           </div>

                    </ItemTemplate>
                   
                   
                </asp:ListView>

                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT * FROM [career] WHERE ([department] = @department)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="dddepartment" Name="department" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
               
    
   

</asp:Content>

