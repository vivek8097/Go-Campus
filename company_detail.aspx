<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="company_detail.aspx.cs" Inherits="campany_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Company Detail</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="panel panel-default">
        
        <div class="panel-body">
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">


                <ItemTemplate>

                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("campany_image") %>' Width="230" Height="230" BorderStyle="Groove" ImageAlign="AbsMiddle" CssClass="img-responsive"/>
                    <br/>
                   
                    <label style="font-family: 'Times New Roman', Times, serif; font-size: x-large;">Company Description:</label>
                    </br>
                    <asp:Label ID="campany_descrLabel" runat="server" Font-Size="Larger" Text='<%# Bind("campany_descr") %>'/>
                    <br/>
                    <label style="font-family: 'Times New Roman', Times, serif; font-size: x-large;">Company Branches:</label>
                    </br>
                    <asp:Label ID="campany_branchLabel" runat="server" Font-Size="Larger" Text='<%# Bind("campany_branch") %>'/>
                    <br/>
                    <label style="font-family: 'Times New Roman', Times, serif; font-size: x-large;">Company Package:</label>
                    </br>
                    <asp:Label ID="campany_pkgLabel" runat="server" Font-Size="Larger" Text='<%# Bind("campany_pkg") %>'/>
                    <br/>
                    <div align="center">
                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#Eval("campany_link") %>' Target="_blank" runat="server">Read More</asp:HyperLink>
                    </div>
                    <br/>

                </ItemTemplate>
            </asp:FormView>

        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [campany_image],[campany_link], [campany_vision], [campany_mission], [campany_descr], [campany_branch], [campany_pkg] FROM [campany] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32"/>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>