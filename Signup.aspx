<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

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
   
  
</head>
<body class="loginBody size-1140">

    <!-- HEADER -->
    <header role="banner">    
      <!-- Top Bar -->
      <div class="top-bar background-white">
        <div class="line">
      <%--    <div class="s-12 m-6 l-6">
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
      
      <!-- Top Navigation -->

      <nav class="background-white background-primary-hightlight boxShadow">
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

              <li><a runat="server" id="account" href="Login.aspx" class="marginLeft2 active">Order</a></li>

            </ul>
          </div>
        </div>
      </nav>
    </header>

    <div class="signInTitle display-block center">Sign Up to LoadBugs</div>
    <div class="signBox width40p marginBottom20">
        <form id="form1" runat="server">
        <div class="">
            <label for="TextBox1" id="mess" runat="server" style="display: none !important;" class="display-block font14 marginBottom5 marginTop5 red center">Failed to signup !</label>
            <label for="TextBox4" class="display-block font14 marginBottom5 marginTop5">Code</label>

            <asp:TextBox ID="TextBox4" TabIndex="1" runat="server" class="noBoxShadow display-block marginBottom15 width100 input"></asp:TextBox>
              <label for="TextBox9" class="display-block font14 marginBottom5 marginTop5">Initials maximum 4 characters</label>
            <asp:TextBox ID="TextBox9" runat="server" class="noBoxShadow display-block marginBottom15 width100 input"></asp:TextBox>


            <label for="TextBox8" class="display-block font14 marginBottom5 marginTop5">Company Name</label>
            <asp:TextBox ID="TextBox8" TabIndex="2" runat="server" class="noBoxShadow display-block marginBottom15 width100 input"></asp:TextBox>
            <label for="TextBox5" class="display-block font14 marginBottom5 marginTop5">Email</label>
            <asp:TextBox ID="TextBox5" type="email" TabIndex="3" runat="server" class="noBoxShadow display-block marginBottom15 width100 input"></asp:TextBox>
            <label for="TextBox6" class="display-block font14 marginBottom5 marginTop5">Address</label>
            <asp:TextBox ID="TextBox6" TabIndex="4" runat="server" class="noBoxShadow display-block marginBottom15 width100 input"></asp:TextBox>
            <label for="TextBox7" class="display-block font14 marginBottom5 marginTop5">Phone Number</label>
            <asp:TextBox ID="TextBox7" type ="number" TabIndex="5" runat="server" class="noBoxShadow display-block marginBottom15 width100 input"></asp:TextBox>
            <label for="TextBox1" class="display-block font14 marginBottom5 marginTop5">User Name</label>
            <asp:TextBox ID="TextBox1" TabIndex="6" runat="server" class="noBoxShadow display-block marginBottom15 width100 input"></asp:TextBox>
            <label for="TextBox2" class="display-block font14 marginBottom5 marginTop5">Password</label>
            <asp:TextBox ID="TextBox2"  TabIndex="7" type ="password" runat="server" class="noBoxShadow display-block marginBottom15 width100 input"></asp:TextBox>
            <label for="TextBox3" class="display-block font14 marginBottom5 marginTop5">Confirm Password</label>
            <asp:TextBox ID="TextBox3" TabIndex="8" type="password" runat="server" class="noBoxShadow display-block marginBottom15 width100 input"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" class="button" />
        </div>
        </form>
    </div>
       <script type="text/javascript" src="Scripts/responsee.js"></script>
    <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="Scripts/template-scripts.js"></script> 
    <script type="text/javascript">
        $("#<%=Button1.ClientID %>").button().click(function () {
            if ($("#<%=TextBox2.ClientID %>").val() == $("#<%=TextBox3.ClientID %>").val() && $("#<%=TextBox2.ClientID %>").val() != "" && $("#<%=TextBox9.ClientID %>").val() != "" && $("#<%=TextBox1.ClientID %>").val() != "" && $("#<%=TextBox4.ClientID %>").val() != "" && $("#<%=TextBox5.ClientID %>").val() != "" && $("#<%=TextBox6.ClientID %>").val() != "" && $("#<%=TextBox7.ClientID %>").val() != "" && $("#<%=TextBox8.ClientID %>").val() != "")
                return true;
            else return false;
        });
        </script>
</body>
</html>
