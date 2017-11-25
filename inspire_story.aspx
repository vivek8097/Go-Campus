<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="inspire_story.aspx.cs" Inherits="inspire_story" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Stories</h1>
        </div>

    </div>
    <div class="panel panel-default">

        <div class="panel-body">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">


                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>

                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("person_image_link") %>' Width="200" Height="200" BorderStyle="Groove" ImageAlign="AbsMiddle" CssClass="img-responsive"/>
                    <br/>

                    <asp:Label ID="person_nameLabel" runat="server" Text='<%# Eval("person_name") %>' Font-Size="Medium" Font-Bold="True"/>
                    <br/>

                    <asp:Label ID="workingLabel" runat="server" Text='<%# Eval("working") %>' Font-Size="Medium" Font-Bold="True"/>
                    <br>
                    </br>
                    <br/>

                    <asp:Label ID="content_descrLabel" runat="server" Text='<%# Eval("descr") %>' Font-Size="Medium"/>
                    <br/>
                    <br/>
                    </span>
                </ItemTemplate>


            </asp:ListView>
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [person_image_link], [person_name], [working], [descr] FROM [inspire] WHERE ([type] = @type)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Story" Name="type" Type="String"/>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>