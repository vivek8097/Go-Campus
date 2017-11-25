<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="campus_process.aspx.cs" Inherits="campus_process" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Personal Detail</h1>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">

                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">


                                <ItemTemplate>
                                    <div align="center">
                                        <label style="font-family: 'Times New Roman', Times, serif; font-size: x-large"> Campus Process</label>
                                        </br>
                                    </div>
                                    <div align="center">
                                        <p>
                                            <asp:Label ID="campus_processLabel" runat="server" Text='<%# Bind("campus_process") %>' Font-Size="Medium"/>
                                        </p>
                                    </div>
                                    <br/>

                                </ItemTemplate>
                            </asp:FormView>

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

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [campus_process] FROM [campany] WHERE ([campany_name] = @campany_name)">
        <SelectParameters>
            <asp:SessionParameter Name="campany_name" SessionField="campany_name" Type="String"/>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>