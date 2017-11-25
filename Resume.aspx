<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="Resume.aspx.cs" Inherits="Resume" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Resume</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>

    <div class="col-lg-12">
        <asp:Panel ID="panelx" runat="server" CssClass="panel panel-default">
            <div class="panel-heading">
              Upload Resume
            </div>
            <div align="center">
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label>Upload File</label>
                            <asp:FileUpload ID="resumefile" runat="server"/>
                        </div>

                    </div>
                  
                    <!-- /.col-lg-6 (nested) -->
                </div>
                <!-- /.row (nested) -->
            </div>
                </div>
            <div align="center">
                <asp:Button ID="btnupload" Text="Update Detail" CssClass="btn btn-default" OnClick="btnupload_Click" runat="server"/>
            </div>
          

        </asp:Panel>
         <div class="col-md-6 col-xs-2 col-lg-12">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" class="table table-striped table-bordered table-hover">
                <Columns>
                    <asp:BoundField DataField="sid" HeaderText="ID" />
                    <asp:TemplateField HeaderText="File">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("resume") %>' CommandName="Download" Text='<%# Eval("resume") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
               </div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [sid], [resume] FROM [student] WHERE ([email] = @email)">
                <SelectParameters>
                    <asp:SessionParameter Name="email" SessionField="email" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        <!-- /.panel-body -->
    </div>

</asp:Content>