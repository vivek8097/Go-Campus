<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="student_personal.aspx.cs" Inherits="student_personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Personal Detail</h1>
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
                                <label>PRN Number</label>
                                <asp:TextBox ID="txtprn" CssClass="form-control" runat="server" required></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>First Name</label>
                                <asp:TextBox ID="txtfname" CssClass="form-control" runat="server" required></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Middle Name</label>
                                <asp:TextBox ID="txtmname" CssClass="form-control" runat="server" required></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <asp:TextBox ID="txtlname" CssClass="form-control" runat="server" required></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Date of Birth</label>
                                <input class="form-control" id="txtdob" name="date" runat="server" placeholder="MM/DD/YYYY" type="text"/>
                            </div>
                            <div class="form-group">
                                <label>Gender</label>
                                <asp:DropDownList ID="ddgender" CssClass="form-control" runat="server" required>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                            <div class="form-group">
                                <label>Department</label>
                                <asp:DropDownList ID="dddepartment" CssClass="form-control" runat="server" required>
                                    <asp:ListItem>Information Technology</asp:ListItem>
                                    <asp:ListItem>Computer Science and Engineering</asp:ListItem>
                                    <asp:ListItem>Mechanical Engineering</asp:ListItem>
                                    <asp:ListItem>Machanical Automation</asp:ListItem>
                                    <asp:ListItem>Aeronautical Engineering</asp:ListItem>
                                    <asp:ListItem>Automobile Engineering</asp:ListItem>
                                    <asp:ListItem>Electronic and Telecommunication</asp:ListItem>
                                    <asp:ListItem>Electrical Engineering</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                            <div class="form-group">
                                <label>Mobile Number</label>
                                <asp:TextBox ID="txtmobile" CssClass="form-control" runat="server" required></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server" required></asp:TextBox>

                            </div>

                            <div class="form-group">
                                <label>Mailing/Residential Address</label>
                                <asp:TextBox ID="txtaddress" TextMode="MultiLine" CssClass="form-control" runat="server" required></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Religion</label>
                                <asp:TextBox ID="txtreligon" CssClass="form-control" runat="server" required></asp:TextBox>

                            </div>

                            <div class="form-group">
                                <label>Cast</label>
                                <asp:TextBox ID="txtcast" CssClass="form-control" runat="server" required></asp:TextBox>

                            </div>
                            <div class="form-group">
                                <label>Personal Photo</label>
                                <asp:FileUpload ID="p_photo" runat="server"/>

                            </div>
                            <asp:Button ID="btnupdate" Text="Update Detail" CssClass="btn btn-default" OnClick="btnupdate_Click" runat="server"/>
                            <asp:Button ID="btnreset" Text="Reset" CssClass="btn btn-default" runat="server"/>
                            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>

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
    <!-- /.row -->
</asp:Content>