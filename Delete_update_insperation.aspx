<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="Delete_update_insperation.aspx.cs" Inherits="Delete_update_insperation" %>

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
            <h1 class="page-header">Add Insperation</h1>
        </div>

    </div>


    <div class="form-group">
        <label> Select Type of Content</label>

        <asp:DropDownList ID="ddtype" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddtype_OnSelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>Image</asp:ListItem>
            <asp:ListItem>Video</asp:ListItem>
            <asp:ListItem>Story</asp:ListItem>
        </asp:DropDownList>


    </div>
    
     <div class="form-group">
        <asp:DropDownList ID="ddhead" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddhead_OnSelectedIndexChanged" ></asp:DropDownList>
        </div>

    <div class="col-lg-12">
        <asp:Panel ID="panelimage" runat="server" CssClass="panel panel-default">
            <div class="panel-heading">
                Image
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">

                        <div class="form-group">
                            <label>Image Head</label>
                            <asp:TextBox ID="txtimage_head" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:Image ID="Image1" Width="240" height="240" CssClass="img-thumbnail" runat="server" />
                            </div>

                        <div class="form-group">
                            <label>Upload File</label>
                            <asp:FileUpload ID="inspire_image_file" runat="server"/>
                        </div>

                    </div>
                    <!-- /.col-lg-6 (nested) -->
                </div>
                <!-- /.row (nested) -->
            </div>
        </asp:Panel>
        <!-- /.panel-body -->
    </div>
    <div class="col-lg-12">
        <asp:Panel ID="panelvideo" runat="server" CssClass="panel panel-default">
            <div class="panel-heading">
                Videos
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">

                        <div class="form-group">
                            <label>Video Head</label>
                            <asp:TextBox ID="txtvideo_head" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>
                      
                        <div class="form-group">
                            <label>Video Link</label>
                            <asp:TextBox ID="txtvideo_link" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>


                    </div>
                    <!-- /.col-lg-6 (nested) -->
                </div>
                <!-- /.row (nested) -->
            </div>
        </asp:Panel>
        <!-- /.panel-body -->
    </div>

    <div class="col-lg-12">
        <asp:Panel ID="panelstory" runat="server" CssClass="panel panel-default">
            <div class="panel-heading">
                Story
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                              <asp:Image ID="person_image" CssClass="img-thumbnail" runat="server" />
                            </div>
                        <div class="form-group">
                            <label>Person Name</label>
                            <asp:TextBox ID="txtperson_name" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label>Working Designation</label>
                            <asp:TextBox ID="txtworking" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>


                        <div class="form-group">
                            <label>Content</label>
                            <asp:TextBox ID="txtcontent" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>

                        </div>


                        <div class="form-group">
                            <label>Upload File</label>
                            <asp:FileUpload ID="person_image_file" runat="server"/>
                        </div>

                    </div>
                    <!-- /.col-lg-6 (nested) -->
                </div>
                <!-- /.row (nested) -->
            </div>
        </asp:Panel>
        <!-- /.panel-body -->
    </div></br>
    <div align="center">
        &nbsp;<asp:Button id="btnupdate" Text="Update" runat="server" OnClick="btnupdate_OnClick" CssClass="btn btn-default"></asp:Button>
        <asp:Button id="btndelete" Text="Delete" runat="server" OnClick="btndelete_OnClick" CssClass="btn btn-default"></asp:Button>
    </div>

</asp:Content>

