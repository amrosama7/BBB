<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Load Bugs</title>
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
<body class="size-1140">
  
    <!-- HEADER -->
    <header role="banner">    
      <!-- Top Bar -->
      <div class="top-bar background-white">
        <div class="line">
          <%--<div class="s-12 m-6 l-6">
            <div class="top-bar-contact">
              <p class="text-size-12">Contact Us: 01019267245  | <a class="text-orange-hover" href="mailto:loadbugs@gmail.com">loadbugs@gmail.com</a></p>
            </div>
          </div>--%>
          <div class="s-12 m-7 l-7">
            <div class="right">
              <ul class="top-bar-social right">
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
      </div>
      
      <!-- Top Navigation -->
      <nav class="background-white background-primary-hightlight">
        <div class="line">
          <div class="s-12 l-2 logofont">
  <a href="" class="logo"><img src="img1/loggg.png" alt=""></a>             
          </div>
          <div class="top-nav s-12 l-10">
            <p class="nav-text"></p>
            <ul class="right chevron">
              <li><a href="/" class="marginLeft2 active">Home</a></li>
              <li><a href="contact.aspx" class="marginLeft2">Contact Us</a></li>
              <li><a href="about.aspx" class="marginLeft2">About</a></li>
              <li><a runat="server" id="account" href="Login.aspx" class="marginLeft2">Order</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
    
    <!-- MAIN -->
    <main role="main">
      <!-- Main Carousel -->
     
       
              <div class="s-12 center"  style="  position: relative;">
                <img src="img1/shutterstock4_.png" alt="">
               
        </div>
     
    
     
      
      
    </main>
    
    <!-- FOOTER -->
    <footer>
     
      
      <!-- Main Footer -->
      <section class="section background-dark">
        <div class="line">
          <div class="margin">
            <!-- Collumn 1 -->
      <%--      <div class="s-12 m-12 l-4 margin-m-bottom-2x">
              <h4 class="text-uppercase text-strong">Our Philosophy</h4>
              <p class="text-size-20"><em>"Connecting the world together is what we are here for."</em><p>
                            
              <div class="line">
                <h4 class="text-uppercase text-strong margin-top-30">About Our Company</h4>
                <div class="margin">
                  <div class="s-12 m-12 l-4 margin-m-bottom">
                    <a class="image-hover-zoom" href="/"><img src="img/blog-04.jpg" alt=""></a>
                  </div>
                  <div class="s-12 m-12 l-8 margin-m-bottom">
                    <p>Now you can safely say your goodbyes to lengthy delivery processes.</p>
                    <a class="text-more-info text-primary-hover" href="about.aspx">Read more</a>
                  </div>
                </div>
              </div>
            </div>--%>
            
            <!-- Collumn 2 -->
            <div class="s-12 m-12 l-6 margin-m-bottom-2x">
              <h4 class="text-uppercase text-strong">Contact Us</h4>
              <div class="line">
                <div class="s-1 m-1 l-1 text-center">
                  <i class="icon-placepin text-primary text-size-12"></i>
                </div>
                <div class="s-11 m-11 l-11 margin-bottom-10">
                  <p><b>Adress:</b> 62, Street 13, Maadi Sarayat Al Gharbeyah, Cairo Governorte</p>
                </div>
              </div>
              <div class="line">
                <div class="s-1 m-1 l-1 text-center">
                  <i class="icon-mail text-primary text-size-12"></i>
                </div>
                <div class="s-11 m-11 l-11 margin-bottom-10">
                  <p><a href="/" class="text-primary-hover"><b>E-mail: </b> loadbugs@gmail.com</a></p>
                </div>
              </div>
              <div class="line">
                <div class="s-1 m-1 l-1 text-center">
                  <i class="icon-smartphone text-primary text-size-12"></i>
                </div>
                <div class="s-11 m-11 l-11 margin-bottom-10">
                  <p><b>Phone: </b>01019267245 </p>
                </div>
              </div>
              <div class="line">
                <div class="s-1 m-1 l-1 text-center">
                  <i class="icon-twitter text-primary text-size-12"></i>
                </div>
                <div class="s-11 m-11 l-11 margin-bottom-10">
                  <p><a href="https://twitter.com/loadbugs" target='_blank' class="text-primary-hover"><b>Twitter</b></a></p>
                </div>
              </div>
              <div class="line">
                <div class="s-1 m-1 l-1 text-center">
                  <i class="icon-facebook text-primary text-size-12"></i>
                </div>
                <div class="s-11 m-11 l-11">
                  <p><a href="https://www.facebook.com/Loadbugs/" target='_blank' class="text-primary-hover"><b>Facebook</b></a></p>
                </div>
              </div>
            </div>
            
            <!-- Collumn 3 -->
            <div class="s-12 m-12 l-6">
              <h4 class="text-uppercase text-strong">Leave a Message</h4>
              <form class="customform text-white">
                <div class="line">
                  <div class="margin">
                    <div class="s-12 m-12 l-6">
                      <input name="email" disabled="disabled" class="required email border-radius" placeholder="Your e-mail" title="Your e-mail" type="text" />
                    </div>
                    <div class="s-12 m-12 l-6">
                      <input name="name" disabled="disabled" class="name border-radius" placeholder="Your name" title="Your name" type="text" />
                    </div>
                  </div>
                </div>
                <div class="s-12">
                  <textarea name="message" disabled="disabled" class="required message border-radius" placeholder="Your message" rows="3"></textarea>
                </div>
                <div class="s-12"><button disabled="disabled" class="submit-form button background-primary border-radius text-white" type="submit">Submit</button></div> 
              </form>
            </div>
          </div>
        </div>
      </section>
       
      <hr class="break margin-top-bottom-0" style="border-color: rgba(0, 38, 51, 0.80);">
      
      <!-- Bottom Footer -->
      <section class="padding background-dark">
        <div class="line">
   <div class="s-12 l-12">
            <p class="text-size-12" style="text-align: center;">&copy;2017</p>
          </div>
         
        </div>
      </section>
    </footer>
    <script type="text/javascript" src="Scripts/responsee.js"></script>
    <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="Scripts/template-scripts.js"></script>   
   </body>
</html>

