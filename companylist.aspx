<%@ Page Title="" Language="C#" MasterPageFile="~/student.master" AutoEventWireup="true" CodeFile="companylist.aspx.cs" Inherits="campanylist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
     <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Student List</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                   Campany Table
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="dataTable_wrapper">
                        <table class="table table-striped table-bordered table-hover" id="table1">
                            <thead>
                            <tr>
                                <th>Campany Name</th>
                                <th>Department</th>

                                <th></th>
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

