<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_visiting _snaps.aspx.cs" Inherits="add_visiting__snaps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Company Detail</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Company Criteria
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">


                            <div class="form-group">
                                <label>Department</label>

                                <asp:DropDownList ID="ddcampany" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="campany_name" DataValueField="campany_name">
                                </asp:DropDownList>


                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [campany_name] FROM [campany]"></asp:SqlDataSource>


                            </div>

                            <div class="form-group">
                                <label>Visiting Snaps</label>
                                <asp:FileUpload ID="visiting_snaps_file" runat="server"/>
                            </div>
                        </div>
                        <!-- /.col-lg-6 (nested) -->
                    </div>
                    <!-- /.row (nested) -->
                    <asp:Button id="btninsert" runat="server" Text="Insert" CssClass="btn btn-default" OnClick="btninsert_OnClick"></asp:Button>
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>


        <!-- /.col-lg-12 -->
    </div>
</asp:Content>