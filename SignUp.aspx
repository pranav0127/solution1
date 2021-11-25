<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="Google Chrome" /> 

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/Custom.css" rel="stylesheet" />


</head>
<body>
    <form id="form1" runat="server">
    <div>

        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle Notification</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx" ><span><img src="Icons/Shoe.png" alt="Go Faster, Go Stronger" height="30"/>StepUp</span></a>

                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li ><a href="Default.aspx" >Home</a></li>
                        <li><a href="#" >About-Us</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men's Wear<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Casual</a></li>
                                <li><a href="#">Ethnic</a></li>
                                <li><a href="#">Formal</a></li>
                                <li><a href="#">Party</a></li>
                                <li><a href="#">Sports</a></li>
                       
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Women's Wear<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                
                                <li><a href="#">Casual</a></li>
                                <li><a href="#">Ethnic</a></li>
                                <li><a href="#">Formal</a></li>
                                <li><a href="#">Party</a></li>
                                <li><a href="#">Sports</a></li>
                                <li><a href="#">Wedding</a></li>

                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Kid's Wear<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                
                                <li><a href="#">Casual</a></li>
                                <li><a href="#">Ethnic</a></li>
                                <li><a href="#">Formal</a></li>
                                <li><a href="#">Sports</a></li>

                            </ul>
                        </li>

                         <li><a href="#" >Sale</a></li>
                         <li class="active"><a href="SignUp.aspx" >Sign Up</a></li>
                         <li><a href="SignIn.aspx" >Sign In</a></li>
                    </ul>
                </div>

            </div>


        </div>

        <br /><br />
        <br /><br />
    
    </div>

        <!--sign up form start-->
        <div class="center-page">
            <label class="col-xs-11">User Name:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter Username"></asp:TextBox>
            </div>

            <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtPass" runat="server" Class="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
            </div>
            

        
            <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
            </div>
            

        
            <label class="col-xs-11">Full Name:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter Your Full Name"></asp:TextBox>
            </div>
            

        
            <label class="col-xs-11">Email ID:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter your Email ID"></asp:TextBox>
            </div>
            <br /><br />
            <label class="col-xs-11"></label>
            <div class="col-xs-11">
                <asp:Button ID="btnsubmit" class="btn btn-success" runat="server" Text="SignUp" OnClick="btnsubmit_Click"></asp:Button>
            </div>
            

        </div>

        <!--sign up form end-->

        <!--footer-->

        <hr />



        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2021StepUp.in &middot; <a href="Default.aspx">Home</a>&middot; <a href="#">About-Us</a>&middot; <a href="#">Men's Wear</a>&middot;</p>
            </div>
        </footer>


    </form>

    

</body>
</html>
