<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="delete_update_questions.aspx.cs" Inherits="delete_update_questions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    
     <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Important Questions</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="form-group">
    <asp:DropDownList ID="ddcampany" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="campany_name" DataValueField="campany_name" AutoPostBack="True"></asp:DropDownList>
        </div>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [campany_name] FROM [campany]"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" />
            <asp:BoundField DataField="question_link" HeaderText="File" />
            <asp:BoundField DataField="question_descr" HeaderText="File Description" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Delete" Text="Delete"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Update" Text="Update"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
     </asp:GridView>

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [Id], [question_link], [question_descr] FROM [important_question] WHERE ([campany_name] = @campany_name)">
         <SelectParameters>
             <asp:ControlParameter ControlID="ddcampany" Name="campany_name" PropertyName="SelectedValue" Type="String" />
         </SelectParameters>
     </asp:SqlDataSource>

    </asp:Content>


