<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="company_criteria.aspx.cs" Inherits="campany_criteria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Criteria</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">

                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">


                                <EmptyDataTemplate>
                                    <span>No data was returned.</span>
                                </EmptyDataTemplate>

                                <ItemTemplate>
                                    <label style="font-family: 'Times New Roman', Times, serif; font-size: large">SSC Percentage</label>
            <asp:Label ID="x_perLabel" runat="server" Text='<%# Eval("x_per") %>' />
            <br />
            <label style="font-family: 'Times New Roman', Times, serif; font-size: large">HSC Percentage</label>
            <asp:Label ID="xii_perLabel" runat="server" Text='<%# Eval("xii_per") %>' />
            <br />
            <label style="font-family: 'Times New Roman', Times, serif; font-size: large">Diploma Percentage</label>
            <asp:Label ID="dip_perLabel" runat="server" Text='<%# Eval("dip_per") %>' />
            <br />
           <label style="font-family: 'Times New Roman', Times, serif; font-size: large">First Year Percentage</label>
            <asp:Label ID="first_yearLabel" runat="server" Text='<%# Eval("first_year") %>' />
            <br />
             <label style="font-family: 'Times New Roman', Times, serif; font-size: large">Second Percentage</label>
            <asp:Label ID="second_yearLabel" runat="server" Text='<%# Eval("second_year") %>' />
            <br />
            <label style="font-family: 'Times New Roman', Times, serif; font-size: large">Third Percentage</label>
            <asp:Label ID="third_yearLabel" runat="server" Text='<%# Eval("third_year") %>' />
            <br />
            <label style="font-family: 'Times New Roman', Times, serif; font-size: large">Fourth Percentage</label>
            <asp:Label ID="fourth_yearLabel" runat="server" Text='<%# Eval("fourth_year") %>' />
            <br />
            <label style="font-family: 'Times New Roman', Times, serif; font-size: large">Year Gap</label>
            <asp:Label ID="y_gapLabel" runat="server" Text='<%# Eval("y_gap") %>' />
            <br />
            <label style="font-family: 'Times New Roman', Times, serif; font-size: large">Live Kts</label>
            <asp:Label ID="live_ktsLabel" runat="server" Text='<%# Eval("live_kts") %>' />
            <br />
             <label style="font-family: 'Times New Roman', Times, serif; font-size: large">Dead Kts</label>
            <asp:Label ID="dead_ktsLabel" runat="server" Text='<%# Eval("dead_kts") %>' />
            <br />
<br /></span>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <div id="itemPlaceholderContainer" runat="server" style="">
                                        <span runat="server" id="itemPlaceholder" />
                                    </div>
                                    <div style="">
                                    </div>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [x_per], [xii_per], [dip_per], [first_year], [second_year], [third_year], [fourth_year], [y_gap], [live_kts], [dead_kts] FROM [campany] WHERE ([campany_name] = @campany_name)">
        <SelectParameters>
            <asp:SessionParameter Name="campany_name" SessionField="campany_name" Type="String"/>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>