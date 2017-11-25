<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html>
<html lang="en">

<head runat="server">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Go Campus</title>

    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


</head>

<body>
<form runat="server" method="post">

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                </br>
                <center>
                    <h1> GO Campus</h1>
                </center>
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">

                        <fieldset>
                            <div class="form-group">
                                <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="E-mail" name="email" type="email" autofocus></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:TextBox ID="txtpassword" class="form-control" runat="server" placeholder="Password" name="password" type="password" value=""></asp:TextBox>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember Me" />
                                </label>
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <asp:Button ID="btnlogin"  runat="server" Text="Login" OnClick="btnlogin_Click" class="btn btn-lg btn-success btn-block"/>
                            
                        </fieldset>
                       </br> <label>Forgot Password Click</label>&nbsp;<asp:HyperLink ID="HyperLink1" NavigateUrl="reset.aspx" runat="server">here..</asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
</form>

</body>

</html>