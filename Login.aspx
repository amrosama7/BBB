<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="CSS/myStyle.css"/>
    <link rel="stylesheet" href="CSS/components.css"/>
    <link rel="stylesheet" href="CSS/icons.css"/>
    <link rel="stylesheet" href="CSS/responsee.css"/>
    <link rel="stylesheet" href="owl-carousel/owl.carousel.css"/>
    <link rel="stylesheet" href="owl-carousel/owl.theme.css"/>
    <!-- CUSTOM STYLE -->
    <link rel="stylesheet" href="CSS/template-style.css"/>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'/>
    <script type="text/javascript" src="Scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui.min.js"></script>    
    <script type="text/javascript" src="Scripts/validation.js"></script> 
</head>
<body class="loginBody size-1140">

    <!-- HEADER -->
    <header role="banner">    
      <!-- Top Bar -->
      <div class="top-bar background-white">
        <div class="line">
        <%--  <div class="s-12 m-6 l-6">
            <div class="top-bar-contact">
              <p class="text-size-12">Contact Us: 01019267245 | <a class="text-orange-hover" href="mailto:loadbugs@gmail.com">loadbugs@gmail.com</a></p>
            </div>
          </div>--%>
          <div class="s-12 m-12 l-12">
            <ul class="top-bar-social center">
               <li><a href="contact.aspx" target='_blank'><i class="icon-smartphone hoverBlack"  title="01019267245"></i></a> </li>
                                                                                   <li><a href="contact.aspx" target='_blank'><i class="icon-mail" style ="color: orange !important"  title="loadbugs@gmail.com"></i></a> </li>


                <li><a href="https://www.facebook.com/Loadbugs/" target='_blank'><i class="icon-facebook hoverBlue" title="facebook"></i></a></li>
                <li><a href="https://www.instagram.com/loadbugs/" target='_blank'><i class="icon-instagram hoverBlack" title="Instagram"></i></a> </li>
                                                    <li><a href="https://twitter.com/loadbugs" target='_blank'><i class="icon-twitter" style ="color: #0084b4 !important" title="twitter"></i></a> </li>
                   <li><a href="" target='_blank'><i class="icon-linked_in " style ="color: #0077B5 !important"  title="LinkedIn"></i></a> </li>

              </ul>
          </div>

        </div>
      </div>

       <nav class="background-white background-primary-hightlight">
        <div class="line">
          <div class="s-12 l-2 logofont">
            <a href="" class="logo"><img src="img/logo.jpg" alt=""/></a>
            
          </div>
          <div class="top-nav s-12 l-10">
            <p class="nav-text"></p>
            <ul class="right chevron">
              <li><a href="/" class="marginLeft2">Home</a></li>
              <li><a href="contact.aspx" class="marginLeft2">Contact Us</a></li>
              <li><a href="about.aspx" class="marginLeft2">About</a></li>
              <li><a runat="server" id="account" href="Login.aspx" class="marginLeft2">Order</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <div class="signInTitle display-block center">Sign in to LoadBugs</div>
    <div class="signBox">
        <form id="form1" runat="server">
        <div class="">
            <label id= "mess" runat ="server" for="TextBox1" style="display: none !important;" class="display-block font14 marginBottom5 marginTop5 red center">Wrong userName or password !</label>
            <label for="TextBox1" class="display-block font14 marginBottom5 marginTop5">User Name</label>
            <asp:TextBox ID="TextBox1" TabIndex="1" runat="server" class="noBoxShadow display-block marginBottom15 width100 input"></asp:TextBox>
            <label for="TextBox2" class="display-block font14 marginBottom5 marginTop5">Password</label>
            <asp:TextBox ID="TextBox2" TabIndex="2" type="password" runat="server" class="noBoxShadow display-block marginBottom15 width100 input"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click" class="button" />
        </div>
        </form>
    </div>
    <div class="signBox marginTop20">New to LoadBugs? <a href="Signup.aspx" class="blue">Create an Account.</a></div>
       <script type="text/javascript" src="Scripts/responsee.js"></script>
    <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="Scripts/template-scripts.js"></script> 
    <script type="text/javascript">
        $("#<%=Button1.ClientID %>").button().click(function () {
            if ($("#<%=TextBox1.ClientID %>").val() == "" || $("#<%=TextBox2.ClientID %>").val() == "")
                return false;
        });
        </script>
</body>
</html>
