<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="add_company_detail.aspx.cs" Inherits="add_campany_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
    <script>
        tinymce.init({
            selector: 'textarea',
            force_br_newlines: false,
            force_p_newlines: false,
            forced_root_block: '',
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Company</h1>
        </div>

    </div>
    </br>

    <div class="form-group">
        <label> Select Company Name</label>

        <asp:DropDownList ID="ddcampany_name" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddcampany_name_OnSelectedIndexChanged" AutoPostBack="True">
        </asp:DropDownList>


    </div>


    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Company Details
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">


                            <div class="form-group">
                                <label>Company Description</label>
                                <asp:TextBox ID="txtcamoany_descr" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Department</label>

                                <asp:DropDownList ID="dddepartment" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="department" DataValueField="department">
                                </asp:DropDownList>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [department] FROM [dep_mast]"></asp:SqlDataSource>
                            </div>
                           
                           
                            <div class="form-group">
                                <label>Company Branch</label>
                                <asp:TextBox ID="txtcampany_branch" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Company Package</label>
                                <asp:TextBox ID="txtcampany_package" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Company Link</label>
                                <asp:TextBox ID="txtcampany_link" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Company Campaus Process</label>
                                <asp:TextBox ID="txtcampany_campaus_process" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Exit Interview Link</label>
                                <asp:TextBox ID="txtexit_interview_link" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Company Image</label>
                                <asp:FileUpload ID="campany_image_file" runat="server"/>
                            </div>


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
                                <label>SSC Percentage</label>
                                <asp:TextBox ID="txtssc_per" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>HSC Percentage</label>
                                <asp:TextBox ID="txthsc_per" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Diploma Percentage</label>
                                <asp:TextBox ID="txtdip_per" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>First Year</label>
                                <asp:TextBox ID="txtfirst_year" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Second Year</label>
                                <asp:TextBox ID="txtsecond_year" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Thired Year</label>
                                <asp:TextBox ID="txtthired_year" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Fourth Year</label>
                                <asp:TextBox ID="txtfourth_year" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Year Gap</label>
                                <asp:TextBox ID="txtyear_gap" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Live Kts</label>
                                <asp:TextBox ID="txtlive_kts" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Dead Kts</label>
                                <asp:TextBox ID="txtdead_kts" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>


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
    </br>
    <asp:Button ID="btnupdate" Text="Update Detail" CssClass="btn btn-default" OnClick="btnupdate_OnClick" runat="server"/>
    <asp:Button ID="btnreset" Text="Reset" CssClass="btn btn-default" runat="server"/>
  




</asp:Content>