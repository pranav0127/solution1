<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecoverPassword.aspx.cs" Inherits="RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset your Password</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="Google Chrome" /> 

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    

  
  
    <style>
        body{
             background-size: cover;
             background-image: linear-gradient(45deg, rgba(254, 246, 210, 0.53) 0%, rgba(254, 246, 210, 0.53) 14.286%,rgba(221, 240, 216, 0.53) 14.286%, rgba(221, 240, 216, 0.53) 28.572%,rgba(188, 233, 223, 0.53) 28.572%, rgba(188, 233, 223, 0.53) 42.858%,rgba(156, 227, 229, 0.53) 42.858%, rgba(156, 227, 229, 0.53) 57.144%,rgba(123, 220, 235, 0.53) 57.144%, rgba(123, 220, 235, 0.53) 71.42999999999999%,rgba(90, 214, 242, 0.53) 71.43%, rgba(90, 214, 242, 0.53) 85.71600000000001%,rgba(57, 207, 248, 0.53) 85.716%, rgba(57, 207, 248, 0.53) 100.002%),linear-gradient(135deg, rgb(246, 99, 200) 0%, rgb(246, 99, 200) 12.5%,rgb(223, 98, 196) 12.5%, rgb(223, 98, 196) 25%,rgb(199, 97, 192) 25%, rgb(199, 97, 192) 37.5%,rgb(176, 96, 188) 37.5%, rgb(176, 96, 188) 50%,rgb(152, 95, 184) 50%, rgb(152, 95, 184) 62.5%,rgb(129, 94, 180) 62.5%, rgb(129, 94, 180) 75%,rgb(105, 93, 176) 75%, rgb(105, 93, 176) 87.5%,rgb(82, 92, 172) 87.5%, rgb(82, 92, 172) 100%);
        }
        #div1{
            margin-left: 450px;
            margin-top: 80px;
            width: 535px;
            background-color: #ffffff;
            padding-left: 50px;
            padding-top: 30px;
            padding-bottom: 60px;
        }
        #img1{
            width: 120px;
        }
        #p1{
            font-size: 30px;
            font-weight: bold;
            margin-top: -10px;
        }
        #textbox{
            border: 1px solid #ffffff;
            font-size: 18px;
        }
        hr{
            width: 400px;
            margin-right: 100px;
            margin-bottom: 17px;
        }
        #label1{
            color: #1b1b1b;
            font-size: 17px;
        }
        #a1{
            color: #108df3;
            text-decoration: none;
            font-size: 17px;
        }
        #a1:hover{
            text-decoration: underline;
            color: #666666;

        }
        #a2{
            font-size: 17px;
            text-decoration: none;
            color: #108df3;
            float: left;
            margin-right: 0px;
        }
        #a2:hover{
            text-decoration: underline;
            color: #666666;
        }
        #a3{
            float: left;
            margin-left: -10px;
        }
        #img2{
            width: 43px;
            
        }
        .submit1{
            width: 160px;
            background-color: #3aaf9f;
            color: white;
            font-size: 18px;
            padding: 7px;
            border: 1px solid #3aaf9f;
            margin-left: 150px;
            margin-top: 15px;
            opacity: 0.9;
        }
        .submit1:hover{
            cursor: pointer;
            opacity: 1;
        }
        #div2{
            margin-left: 450px;
            height: 60px;
            margin-top: 22px;
        }
        #img3{
            width: 55px;
            float: left;
            margin-left: 50px;
        }
        #label2{
            font-size: 19px;
            float: left;
            margin-top: 19px;
        }
        #button1{
            background-color: #ffffff;
            border: 1px solid #ffffff;
            width: 510px;
        }
        #button1:hover{
            cursor: pointer;
            background-color: #e5e5e5;
            border: 1px solid #e5e5e5;
        }
        #div3{
            margin-top: 70px;
            margin-left: 1120px;
        }
        #a4{
            color: black;
            text-decoration: none;
        }
        #a4:hover{
            text-decoration: underline;
        }
        #a5{
            color: black;
            margin-left: 20px;
            text-decoration: none;
        }
        #a5:hover{
            text-decoration: underline;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>

        
         <div id="div1">
       
       
        <p id="p1">Hey! We will help you in recovering password.</p><br />

        
        <asp:TextBox ID="txtNewPass" runat="server" type="password" CssClass="content" placeholder="Enter New Password"  MaxLength="100" style="width: 397px; outline:none; height:40px;" ></asp:TextBox><br /><br />
        <asp:TextBox ID="txtConfirmPass" runat="server" type="password" CssClass="content" placeholder="Confirm Password"  MaxLength="100" style="width: 397px; outline:none; height:40px;" ></asp:TextBox><br /><br />
        <label id="label1" for="">No account?</label>
        <a id="a1" href="SignIn.aspx">Create one!</a><br/>
        
             
                
        

            
                    <asp:Button ID="btnResetPass" class="submit1" runat="server" Text="Reset Password" Visible="False" OnClick="btnResetPass_Click"  />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" CssClass="text-danger" runat="server" ErrorMessage="Required" ControlToValidate="txtNewPass" ForeColor="#CC0000" Visible="False"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" CssClass="text-danger" runat="server" ErrorMessage="Required" ControlToValidate="txtConfirmPass" ForeColor="#CC0000" Visible="False"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidatorPassword" runat="server" ErrorMessage="Password and Confirm Password do not match." ControlToCompare="txtNewPass" ControlToValidate="txtConfirmPass" ForeColor="#CC0000" Visible="False"></asp:CompareValidator>
                <br /><br />
        <asp:Label ID="lblmsg" CssClass="text-success" runat="server"></asp:Label>
    </div>
           






    </form>
</body>
</html>
