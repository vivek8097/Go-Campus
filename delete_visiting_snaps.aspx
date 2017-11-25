<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="delete_visiting_snaps.aspx.cs" Inherits="delete_visiting_snaps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    
     <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Visiting Snaps</h1>
        </div>

    </div>
     <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                  Campus Team Detail
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
    <div class="form-group">
    <asp:DropDownList ID="ddcompany" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="campany_name" DataValueField="campany_name" AutoPostBack="True"></asp:DropDownList>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [campany_name] FROM [campany]"></asp:SqlDataSource>
    
    
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False"  OnRowCommand="GridView1_RowCommand" DataSourceID="SqlDataSource1" Width="133px">
        <Columns>
             <asp:ImageField DataImageUrlField="visiting_snaps"  ItemStyle-Width="50px" ControlStyle-Width="240" ControlStyle-Height = "240">
            </asp:ImageField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Delete" Text="Delete"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
           
        </Columns>
    </asp:GridView>


   


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [Id], [visiting_snaps] FROM [campany_visiting_snaps] WHERE ([campany_name] = @campany_name)">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddcompany" DefaultValue="" Name="campany_name" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
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

