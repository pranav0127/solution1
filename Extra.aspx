<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Extra.aspx.cs" Inherits="Extra" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Welcome!</title>

    <link href="NavBar.css" rel="stylesheet" />
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
    <style>
      
        .navbar-right {
            float: right!important;
            margin-right: -15px;
            margin-top: 10px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
   <header>

     <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle Notification</span>
                        <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx" ><span><img src="Logo.png" alt="Go Faster, Go Stronger" height="45" width="160"
                         style="top:0;"/></span></a>

                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Default.aspx" >Discover</a></li>
                        <li><a href="#" >Men's Wear</a></li>
                        <li><a href="#" >Women's Wear</a></li>
                        <li><a href="#" >Kid's Wear</a></li>
                        <li><a href="#" >Sale</a></li>
                        <li><button id="btnCart" class="btn btn-primary navbar-btn" type="button">Cart<span class="badge" id="pCount" runat="server"></span></button></li>
                        <li id="btnSignUp" runat="server"><a href="SignUp.aspx" >Sign Up</a></li>
                        <li id="btnSignIn" runat="server"><a href="SignIn.aspx" >Sign In</a></li>
                        <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign Out"  />
                    </ul>
                </div>

            </div>


        </div>
    
     </header>


           <!--image slider-->

        <div class="container">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="Slider1.jpg" alt="StepUp" style="display:block; width:100%; height:100%; object-fit: cover;" />
      </div>

      <div class="item">
        <img src="Slider2.jpg" alt="StepUp" style="display:block; width:100%; height:100%; object-fit: cover;" />
      </div>
    
      <div class="item">
        <img src="Slider3.jpg" alt="StepUp" style="display:block; width:100%; height:100%; object-fit: cover;" />
      </div>

        

    </div>

    
  </div>
</div>


    </form>
</body>
</html>
				                            
