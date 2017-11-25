<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="student_acadmic.aspx.cs" Inherits="student_acadmic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">Acadmic Detail</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>

<div class="col-lg-12">
    <asp:Panel ID="panelx" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            Class X
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group">
                        <label>Select Board</label>
                        <asp:DropDownList ID="ddsscboard" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddsscboard_SelectedIndexChanged" runat="server">
                            <asp:ListItem>Not Applicable</asp:ListItem>
                            <asp:ListItem>SSC</asp:ListItem>
                            <asp:ListItem>CBSC</asp:ListItem>
                            <asp:ListItem>ICSC</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label>School Name</label>
                        <asp:TextBox ID="txtsscschool" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtssccomplitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>

                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtssccomplitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtsscmarksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtssctotalmarks" CssClass="form-control" runat="server" OnTextChanged="txtssctotalmarks_OnTextChanged" AutoPostBack="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregare Marks</label>
                        <asp:TextBox ID="txtsscagg" CssClass="form-control"  runat="server" ReadOnly="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Best Of Five</label>
                        <asp:TextBox ID="txtbest_five" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="sscfile" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
    </asp:Panel>
    <!-- /.panel-body -->
</div>
<!-- /.panel -->

<div class="col-lg-12">
    <asp:Panel ID="panelxii" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            Class XII
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Select Board</label>
                        <asp:DropDownList ID="ddhscboard" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddhscboard_SelectedIndexChanged">

                            <asp:ListItem>Not Applicable</asp:ListItem>
                            <asp:ListItem>HSC</asp:ListItem>
                            <asp:ListItem>CBSC</asp:ListItem>
                            <asp:ListItem>ICSC</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <label>College Name</label>
                        <asp:TextBox ID="txthsccollege" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txthsccomplitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txthsccomplitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txthscmarksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txthsctotalmarks" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="txthsctotalmarks_OnTextChanged"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregare Marks</label>
                        <asp:TextBox ID="txthscagg" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="hscfile" runat="server"/>
                    </div>
                    <div class="form-group">
                        <label>CET/AIEEE</label>
                        <asp:TextBox ID="txtcetaieee" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
    </asp:Panel>
    <!-- /.panel-body -->
</div>
<!-- /.panel -->

<div class="col-lg-12">
    <asp:Panel ID="paneldiploma" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            Diploma
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Select Board</label>
                        <asp:DropDownList ID="dddipboard" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="dddipboard_SelectedIndexChanged">

                            <asp:ListItem>Not Applicable</asp:ListItem>
                            <asp:ListItem>MSBTE</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <label>College Name</label>
                        <asp:TextBox ID="txtdipcollege" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtdipcomplitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtdipcomplitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtdipmarksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtdiptotalmarks" CssClass="form-control" runat="server" OnTextChanged="txtdiptotalmarks_OnTextChanged" AutoPostBack="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label> Final Year Diploma Aggregare Marks</label>
                        <asp:TextBox ID="txtdip_final_year" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Diploma Aggregare Marks</label>
                        <asp:TextBox ID="txtdipagg" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="dipfile" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->

        <!-- /.panel -->
    </asp:Panel>
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelbedetail" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            B.E & M.E Detail
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Select B.E University</label>
                        <asp:DropDownList ID="ddbeuniversity" CssClass="form-control" runat="server">

                            <asp:ListItem>Shivaji University</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <label>Select B.E College</label>
                        <asp:DropDownList ID="ddbecollege" CssClass="form-control" runat="server">

                            <asp:ListItem>Annasaheb Dange College of engineering and technology,Ashta</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <label>Current Year</label>
                        <asp:DropDownList ID="ddyear" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddbesem1_SelectedIndexChanged">
                            <asp:ListItem Selected="True" Value="0" Text="Select"></asp:ListItem>
                            <asp:ListItem>FE</asp:ListItem>
                            <asp:ListItem>SE</asp:ListItem>
                            <asp:ListItem>TE</asp:ListItem>
                            <asp:ListItem>BE</asp:ListItem>

                        </asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <label>B. E. Semester I (Applicable / Not Applicable)</label>
                        <asp:DropDownList ID="ddbesem1" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddbesem1_SelectedIndexChanged">

                            <asp:ListItem>Not Applicable</asp:ListItem>
                            <asp:ListItem>Applicable</asp:ListItem>

                        </asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <label>B. E. Semester II (Applicable / Not Applicable)</label>
                        <asp:DropDownList ID="ddbesem2" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddbesem2_SelectedIndexChanged">

                            <asp:ListItem>Not Applicable</asp:ListItem>
                            <asp:ListItem>Applicable</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <div class="form-group">
                        <label>M. E. (Applicable / Not Applicable)</label>
                        <asp:DropDownList ID="ddmeapplicalbe" CssClass="form-control" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddmeapplicalbe_SelectedIndexChanged">

                            <asp:ListItem>Not Applicable</asp:ListItem>
                            <asp:ListItem>Applicable</asp:ListItem>

                        </asp:DropDownList>

                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->

        <!-- /.panel -->
    </asp:Panel>
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelbesem1" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            B. E. - Sem I
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtbesem1complitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtbesem1complitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtbesem1marksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtbesem1totalmarks" CssClass="form-control" AutoPostBack="True" OnTextChanged="txtbesem1totalmarks_OnTextChanged" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregate Marks</label>
                        <asp:TextBox ID="txtbesem1agg" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="besem1file" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->
    </asp:Panel>

    <!-- /.panel -->
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelbesem2" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            B. E. - Sem II
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtbesem2complitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtbesem2complitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtbesem2marksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtbesem2totalmarks" OnTextChanged="txtbesem2totalmarks_OnTextChanged" AutoPostBack="True" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregate Marks</label>
                        <asp:TextBox ID="txtbesem2agg" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="besem2file" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->
    </asp:Panel>
    <!-- /.panel -->
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelbesem3" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            B. E. - Sem III
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtbesem3complitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtbesem3complitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtbesem3markobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtbesem3totalmarks" CssClass="form-control" OnTextChanged="txtbesem3totalmarks_OnTextChanged" AutoPostBack="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregate Marks</label>
                        <asp:TextBox ID="txtbesem3agg" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="besem3file" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->
    </asp:Panel>
    <!-- /.panel -->
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelbesem4" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            B. E. - Sem IV
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtbesem4complitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtbesem4complitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtbesem4marksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtbesem4totalmarks" CssClass="form-control" runat="server" OnTextChanged="txtbesem4totalmarks_OnTextChanged" AutoPostBack="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregate Marks</label>
                        <asp:TextBox ID="txtbesem4agg" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="besem4file" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->
    </asp:Panel>
    <!-- /.panel -->
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelbesem5" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            B. E. - Sem V
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtbesem5complitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtbesem5complitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtbesem5marksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtbesem5totalmarks" CssClass="form-control" runat="server" OnTextChanged="txtbesem5totalmarks_OnTextChanged" AutoPostBack="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregate Marks</label>
                        <asp:TextBox ID="txtbesem5agg" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="besem5file" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->
    </asp:Panel>
    <!-- /.panel -->
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelbesem6" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            B. E. - Sem VI
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtbesem6complitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtbesem6complitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtbesem6marksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtbesem6totalmarks" CssClass="form-control" runat="server" OnTextChanged="txtbesem6totalmarks_OnTextChanged" AutoPostBack="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregate Marks</label>
                        <asp:TextBox ID="txtbesem6agg" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="besem6file" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->
    </asp:panel>
    <!-- /.panel -->
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelbesem7" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            B. E. - Sem VII
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtbesem7complitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtbesem7complitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtbesem7marksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtbesem7totalmarks" CssClass="form-control" runat="server" OnTextChanged="txtbesem7totalmarks_OnTextChanged" AutoPostBack="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregate Marks</label>
                        <asp:TextBox ID="txtbesem7agg" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="besem7file" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->
    </asp:Panel>
    <!-- /.panel -->
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelbesem8" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            B. E. - Sem VIII
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtbesem8complitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtbesem8complitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtbesem8marksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtbesem8totalmarks" CssClass="form-control" runat="server" OnTextChanged="txtbesem8totalmarks_OnTextChanged" AutoPostBack="True"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregate Marks</label>
                        <asp:TextBox ID="txtbesem8agg" CssClass="form-control" ReadOnly="True" runat="server" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="besem8file" runat="server"/>
                    </div>
                    <div class="form-group">
                        <label>BE Average</label>
                        <asp:TextBox ID="txtbeagg" CssClass="form-control"   runat="server"></asp:TextBox>
                        
                    </div>
                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->
    </asp:Panel>
    <!-- /.panel -->
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelmesem1" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            M. E. - Sem I
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtmesem1complitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtmesem1complitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtmesem1marksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtmesem1totalmarks" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregate Marks</label>
                        <asp:TextBox ID="txtmesem1agg" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="mesem1file" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->
    </asp:Panel>
    <!-- /.panel -->
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelmesem2" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            M. E. - Sem II
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtmesem2complitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtmesem2complitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtmesem2marksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtmesem2totalmarksobtained" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregate Marks</label>
                        <asp:TextBox ID="txtmesem2agg" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="mesem2file" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->
    </asp:Panel>
    <!-- /.panel -->
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelmesem3" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            M. E. - Sem III
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtmesem3complitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtmesem3complitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtmesem3marksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtmesem3totalmarks" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregate Marks</label>
                        <asp:TextBox ID="txtmesem3agg" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="mesem3file" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->
    </asp:Panel>
    <!-- /.panel -->
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelmesem4" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            M. E. - Sem IV
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Complition Month</label>
                        <asp:TextBox ID="txtmesem4complitionmonth" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Complition Year</label>
                        <asp:TextBox ID="txtmesem4complitionyear" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Marks Obtained</label>
                        <asp:TextBox ID="txtmesem4marksobtained" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Total Marks</label>
                        <asp:TextBox ID="txtmesem4totalmarks" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Aggregate Marks</label>
                        <asp:TextBox ID="txtmesem4agg" CssClass="form-control" ReadOnly="True" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Upload File</label>
                        <asp:FileUpload ID="mesem4file" runat="server"/>
                    </div>

                </div>
                <!-- /.col-lg-6 (nested) -->
            </div>
            <!-- /.row (nested) -->
        </div>
        <!-- /.panel-body -->
    </asp:Panel>
    <!-- /.panel -->
</div>
<div class="col-lg-12">
    <asp:Panel ID="panelkts" runat="server" CssClass="panel panel-default">
        <div class="panel-heading">
            KTs
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">

                    <div class="form-group">
                        <label>Live KTs </label>
                        <asp:TextBox ID="txtlivekt" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label>Dead KTs</label>
                        <asp:TextBox ID="txtdeadkt" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>


                </div>

                <!-- /.col-lg-6 (nested) -->
            </div>
        </div>
    </asp:Panel>
    <!-- /.row (nested) -->

</div>
<asp:Button ID="btnupdate" Text="Update Detail" CssClass="btn btn-default" OnClick="btnupdate_Click" runat="server"/>
<asp:Button ID="btnreset" Text="Reset" CssClass="btn btn-default" runat="server"/>

<br><br>
<!-- /.panel-body -->
<!-- /.panel -->


<!-- /.col-lg-12 -->

</asp:Content>