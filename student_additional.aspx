<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="student_additional.aspx.cs" Inherits="student_additional" %>

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
            <h1 class="page-header">Edit Additional Detail</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Preferred Programming Language</label>
                                <asp:CheckBox ID="cbc" CssClass="checkbox-inline" Text="C" runat="server"/>
                                <asp:CheckBox ID="cbcp" CssClass="checkbox-inline" Text="C++" runat="server"/>
                                <asp:CheckBox ID="cbjava" CssClass="checkbox-inline" Text="Java" runat="server"/>
                                <asp:CheckBox ID="cbpython" CssClass="checkbox-inline" Text="Python" runat="server"/>
                            </div>
                            <div class="form-group">
                                <label>Career Objective</label>
                                <asp:TextBox ID="txtcareerobjective" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Acadmic Achivement</label>
                                <asp:TextBox ID="txtacdach" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Certifications</label>
                                <asp:TextBox ID="txtcertification" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>

                            <div class="form-group">
                                <label>Project and Intership</label>
                                <asp:TextBox ID="txtprojectinternship" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>

                            <div class="form-group">
                                <label>Position of Responsibility</label>
                                <asp:TextBox ID="txtpositionofresponsibility" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>


                            <br><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Internsip and Experiance
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">

                            <div class="form-group">
                                <label>Campany Name</label>
                                <asp:TextBox ID="txtcampany_name" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Campany Address</label>
                                <asp:TextBox ID="txtcampany_address" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>campany MObile Number</label>
                                <asp:TextBox ID="txtcampany_mob" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>

                            <div class="form-group">
                                <label>Officer Name</label>
                                <asp:TextBox ID="txtofficer_name" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>

                            <div class="form-group">
                                <label>Officer Designation</label>
                                <asp:TextBox ID="txtofficer_designation" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Officer Contact Number</label>
                                <asp:TextBox ID="txtofficer_num" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Relation With Officer</label>
                                <asp:TextBox ID="txtrelation_with_officer" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Nature of Training</label>
                                <asp:TextBox ID="txtnatureoftraining" CssClass="form-control" runat="server"></asp:TextBox>

                            </div>


                            <br><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Personal Skills
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">

                            <div class="form-group">
                                <label>Hobbies</label>
                                <asp:TextBox ID="txthobbies" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Strength</label>
                                <asp:TextBox ID="txtstrength" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Weakness</label>
                                <asp:TextBox ID="txtweakness" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>

                            </div>


                            <asp:Button ID="btnupdate" Text="Update Detail" CssClass="btn btn-default" OnClick="btnupdate_Click" runat="server"/>
                            <asp:Button ID="btnreset" Text="Reset" CssClass="btn btn-default" runat="server"/>
                            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                            <br><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>