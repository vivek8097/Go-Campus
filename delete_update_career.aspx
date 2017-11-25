<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="delete_update_career.aspx.cs" Inherits="delete_update_career" %>

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
                    Delete and Update Career
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
                                <asp:TextBox ID="txtcarrer_link" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>


                        </div>
                        <!-- /.col-lg-6 (nested) -->
                    </div>

                   &nbsp; <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_OnClick"  CssClass="btn btn-default"></asp:Button>
                     <asp:Button ID="btndelete" runat="server" Text="Delete"  OnClick="btndelete_OnClick" CssClass="btn btn-default"></asp:Button>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
    
    

</asp:Content>

