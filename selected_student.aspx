<%@ Page Title="" Language="C#" MasterPageFile="~/company.master" AutoEventWireup="true" CodeFile="selected_student.aspx.cs" Inherits="selected_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">


    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Campany List</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    DataTables Advanced Tables
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="dataTable_wrapper">
                        <table class="table table-striped table-bordered table-hover" id="table1">
                            <thead>
                            <tr>
                                <th>Student Name</th>
                                <th>Department</th>
                                <th>Package</th>

                            </tr>
                            </thead>
                            <tbody>
                            <asp:literal ID="Literal1" runat="server"></asp:literal>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>