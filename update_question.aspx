<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="update_question.aspx.cs" Inherits="update_question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    
     <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Add Important Questions</h1>
        </div>

    </div>
      <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Student Personal Detail
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <asp:DropDownList ID="ddcampany_name" runat="server" DataSourceID="SqlDataSource1" CssClass="form-control" DataTextField="campany_name" DataValueField="campany_name"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [campany_name] FROM [campany]"></asp:SqlDataSource>
                              </div>
                           
                            <div class="form-group">
                               <label>Enter Question Description</label> 
                            <asp:TextBox ID="txtquestion_descr" CssClass="form-control" runat="server"></asp:TextBox>
                             </div>
                            <div class="form-group">
                                  <label>Select File</label> 
                            <asp:FileUpload ID="question_file" CssClass="form-control" runat="server" />
                            </div>
                            <div class="form-group">
                            <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-default" OnClick="btnupdate_OnClick" Text="Update" />
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
    

</asp:Content>

