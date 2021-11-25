<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>StepUp</title>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
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
    
      

         <header>

     <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle Notification</span>
                        <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx" ><span><img src="Logo.png" alt="Go Faster, Go Stronger" height="36" width="160"
                         style="top:0;"/></span></a>

                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Default.aspx" >Discover</a></li>
                        <li><a href="Men.aspx" >Men's Wear</a></li>
                        <li><a href="Women.aspx" >Women's Wear</a></li>
                        <li><a href="Kids.aspx" >Kid's Wear</a></li>
                     
                        <li><button id="btnCart" class="btn btn-primary navbar-btn" type="button">Cart<span class="badge" id="pCount" runat="server"></span></button></li>
                        <li id="btnSignIn" runat="server"><a href="SignIn.aspx" >Sign Up | Sign In</a></li>
                        &nbsp;<asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign Out" OnClick="btnlogout_Click1"  />
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
        <!--image slider end-->

        <br /><br />
     
    </div>

        <!--Middle Content Start-->

        <div class="container center div1">
            <br /><br />
            <div class="row">
                <div class="col-lg-4">
                    <a href="Men.aspx"><img src="MenShoes.jpg" alt="Shop Men's Wear" width="350" height="350" /></a>
                </div>
                <div class="col-lg-4">
                    <a href="Women.aspx"><img  src="WomenShoes.jpg" alt="Shop Women's Wear" width="350" height="350" /></a>
                </div>
                <div class="col-lg-4">
                    <a href="Kids.aspx"><img  src="KidShoes.jpg" alt="Shop Kid's Wear" width="350" height="350" /></a>
                </div>
            </div>
            <br /><br />
        </div> 

    <div class="MiddleContent">

    </div>



        <footer>
             <hr />
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2021StepUp.in &middot; <a href="Default.aspx">Home</a>&middot; <a href="#">About-Us</a>&middot;&nbsp; <a href="#">Men's Wear</a>&middot; &nbsp;<a href="#">Women's Wear</a>&middot;&nbsp; <a href="#">Kids's Wear</a>&nbsp;</p>
            </div>
        </footer>



        <!--Footer Section End-->



    </form> 
</body>
</html>
