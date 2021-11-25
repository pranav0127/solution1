<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home Page</title>

    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="Google Chrome" /> 

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/Custom.css" rel="stylesheet" />

    <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "~/Cart.aspx";
            });
        });
    </script>


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
                        <li class="active"><a href="Default.aspx" >Home</a></li>
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
                        <li><button id="btnCart" class="btn btn-primary navbar-btn" type="button">Cart<span class="badge" id="pCount" runat="server"></span></button></li>

                        <li>
                        
                        <asp:Button ID="btnlogin" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign In" OnClick="btnlogin_Click" /> 
                        <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign Out" OnClick="btnlogout_Click" />
                         </li>

                    </ul>
                </div>

            </div>


        </div>

        <br /><br />
        <br /><br />
        </div>




        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2021StepUp.in &middot; <a href="Default.aspx">Home</a>&middot; <a href="#">About-Us</a>&middot; <a href="#">Men's Wear</a>&middot;</p>
            </div>
        </footer>
    

    </form>
</body>
</html>
