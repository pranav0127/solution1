<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title>Welcome!</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="Google Chrome" /> 

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="SignIn_CSS.css" rel="stylesheet" />

  

   
    <style>
        body{

        
        background-size: cover;
             background-image: linear-gradient(45deg, rgba(254, 246, 210, 0.53) 0%, rgba(254, 246, 210, 0.53) 14.286%,rgba(221, 240, 216, 0.53) 14.286%, rgba(221, 240, 216, 0.53) 28.572%,rgba(188, 233, 223, 0.53) 28.572%, rgba(188, 233, 223, 0.53) 42.858%,rgba(156, 227, 229, 0.53) 42.858%, rgba(156, 227, 229, 0.53) 57.144%,rgba(123, 220, 235, 0.53) 57.144%, rgba(123, 220, 235, 0.53) 71.42999999999999%,rgba(90, 214, 242, 0.53) 71.43%, rgba(90, 214, 242, 0.53) 85.71600000000001%,rgba(57, 207, 248, 0.53) 85.716%, rgba(57, 207, 248, 0.53) 100.002%),linear-gradient(135deg, rgb(246, 99, 200) 0%, rgb(246, 99, 200) 12.5%,rgb(223, 98, 196) 12.5%, rgb(223, 98, 196) 25%,rgb(199, 97, 192) 25%, rgb(199, 97, 192) 37.5%,rgb(176, 96, 188) 37.5%, rgb(176, 96, 188) 50%,rgb(152, 95, 184) 50%, rgb(152, 95, 184) 62.5%,rgb(129, 94, 180) 62.5%, rgb(129, 94, 180) 75%,rgb(105, 93, 176) 75%, rgb(105, 93, 176) 87.5%,rgb(82, 92, 172) 87.5%, rgb(82, 92, 172) 100%);
        }
    </style>
     </head>

<body>
    <form id="form1" runat="server">
    <div>

        <!--header starts-->

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
                   
                        <li id="btnSignIn" runat="server"><a href="SignIn.aspx" >Sign Up | Sign In</a></li>&nbsp;
                        <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn" runat="server" Text="Sign Out"  />
                    </ul>
                </div>

            </div>


        </div>

        <!--header ends-->

      <br /><br /><br />
      
        <!--Template Design Starts-->
        
        <div id="container">
  
  <!-- Cover Box -->
  <div id="cover">
      <!-- Sign Up Section -->
      <h1 class="sign-up">Hello, Friend!</h1>
      <p class="sign-up"><b>New Here?</b><br /> Sign Up and discover our brand new collection. <br /> Hurry Up! Before the stock goes out.</p>
      <a class="button sign-up" href="#cover">Sign Up</a>
    
      <!-- Sign In Section -->
      <h1 class="sign-in">Time to feel like home!</h1>
      <p class="sign-in"><b>One of us?</b><br /> Already have an account, just sign in. We've missed you.</p>
      <br/>
      <a class="button sub sign-in" href="#">Sign In</a>
 
  </div>
  
  <!-- Login Box -->
  <div id="login">
    <h1>Sign In</h1>
   
    <form>
      <!--<input type="email" placeholder="Email" autocomplete="off" id="txtUserName" runat="server" /><br/>-->
        <asp:TextBox ID="txtUsername_In" placeholder="UserName" runat="server"></asp:TextBox><br />

      <!--<input type="password" placeholder="Password" autocomplete="off" id="txtPass" runat="server" /><br/>-->
        <asp:TextBox ID="txtPass_In" runat="server" TextMode="Password" placeholder="Password" ></asp:TextBox><br />

        <asp:CheckBox ID="CheckBox1" runat="server" />
        <asp:Label ID="Label3"  CssClass="control-label"  runat  ="server" Text="Remember Me"></asp:Label><br />
        <asp:Button ID="Button1" CssClass="submit-btn" runat="server" Text="Sign In"  OnClick="btnlogin_Click" ></asp:Button><br /><br />
         <a id="forgot-pass" href="ForgotPassword.aspx">Forgot your password?</a><br/>
    
  </div>
  
  <!-- Register Box -->
  <div id="register">
    <h1>Create Account</h1>
    
  
    
     
        <asp:TextBox ID="txtUname_Up" runat="server"  placeholder="UserName"></asp:TextBox><br />
         <asp:TextBox ID="txtName_Up" runat="server"  placeholder="Full Name"></asp:TextBox><br />
        <asp:TextBox ID="txtEmail_Up" runat="server" placeholder="Email"></asp:TextBox><br />
        <asp:TextBox ID="txtPass_Up" runat="server"  placeholder="Password" TextMode="Password"></asp:TextBox><br />
        <asp:TextBox ID="txtCPass_Up" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox><br />
      
      <asp:Button ID="btnsubmit" class="submit-btn" runat="server" Text="Sign Up" OnClick="btnsubmit_Click" ></asp:Button>
    </form>
  </div>
  
</div>

        <!--Template Design Ends-->


    
    

        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2021StepUp.in &middot; <a href="Default.aspx">Home</a>&middot; <a href="#">About-Us</a>&middot; <a href="#">Men's Wear</a>&middot;</p>
            </div>
        </footer>
        </div>
    </form>
</body>
</html>
