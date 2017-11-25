<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="important_questions.aspx.cs" Inherits="important_questions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
     <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Important Questions</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" />
            <asp:BoundField DataField="question_descr" HeaderText="File Description" />
            <asp:TemplateField HeaderText="File">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("question_link") %>' CommandName="Download" Text='<%# Eval("question_link") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampusConnectionString %>" SelectCommand="SELECT [Id], [question_descr], [question_link] FROM [important_question] WHERE ([campany_name] = @campany_name)">
        <SelectParameters>
            <asp:SessionParameter Name="campany_name" SessionField="campany_name" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    

</asp:Content>

