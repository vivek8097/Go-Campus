<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_career.aspx.cs" ValidateRequest="false" Inherits="add_career" %>

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
            <h1 class="page-header">Career</h1>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Add Carrer
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">


                            <div class="form-group">
                                <label>Department</label>

                                <asp:DropDownList ID="dddepartment" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="department" DataValueField="department">
                                </asp:DropDownList>

                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [department] FROM [dep_mast]"></asp:SqlDataSource>
                            </div>
                            <div class="form-group">
                                <label>Career Head</label>
                                <asp:TextBox ID="txtcareer_head" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Career Description</label>
                                <asp:TextBox ID="txtcareer_descr" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label>Career Link</label>
                                <asp:TextBox ID="txtcarrer_link" CssClass="form-control" runat="server" ></asp:TextBox>
                            </div>


                        </div>
                        <!-- /.col-lg-6 (nested) -->
                    </div>

                    <asp:Button ID="btninsert" runat="server" Text="Insert" OnClick="btninsert_OnClick" CssClass="btn btn-default"></asp:Button>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>


</asp:Content>