<%@ Page Language="C#" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="CSS/template-style.css"/>
    <link rel="stylesheet" href="CSS/responsee.css"/>
    <link rel="stylesheet" href="CSS/myStyle.css"/>
    <link rel="stylesheet" href="CSS/components.css"/>
    <link rel="stylesheet" href="CSS/icons.css"/>

    <link rel="stylesheet" href="owl-carousel/owl.carousel.css"/>
    <link rel="stylesheet" href="owl-carousel/owl.theme.css"/>
    <link href="CSS/jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="CSS/jquery-ui.structure.min.css" rel="stylesheet" type="text/css" />
    <link href="CSS/jquery-ui.theme.min.css" rel="stylesheet" type="text/css" />
    <!-- CUSTOM STYLE -->
   
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800&subset=latin,latin-ext' rel='stylesheet' type='text/css'/>
    
  
     
    <link href="CSS/jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="CSS/jquery-ui.structure.min.css" rel="stylesheet" type="text/css" />
    <link href="CSS/jquery-ui.theme.min.css" rel="stylesheet" type="text/css" />
    <link href="CSS/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="CSS/ui.jqgrid.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.10.2.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="Scripts/jquery-ui.min.js" type="text/javascript"></script>
    <script src="Scripts/grid.locale-en.js" type="text/javascript"></script>
    <script src="Scripts/jquery.jqGrid.min.js" type="text/javascript"></script> 
    <script src="Scripts/grid.locale-en.js" type="text/javascript"></script>
    <script src="Scripts/jquery.jqGrid.min.js" type="text/javascript"></script>
    <script src="Scripts/myScript.js" type="text/javascript"></script>
    
        <%--<script src="Scripts/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <link type="text/css" href="CSS/bootstrap.min.css" rel="stylesheet" />--%>
</head>
<body class="size-1140 overflow">
    <form id="form1" runat="server">
        
        <div class="boxNew width53">
            <i class="fa fa-times close" aria-hidden="true"></i>
            <div style= "display :none;" class="error up upStyle"></div>
            <label id ="Laglo" for="TextBox1" class="display-block font14 marginBottom5 marginTop5p textWhite left5p">AWB</label>
            <asp:TextBox ID="TextBox1" TabIndex="1" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <label for="TextBox5" class="display-block font14 marginBottom5 marginTop5p textWhite left5p">Name</label>
            <asp:TextBox ID="TextBox5" TabIndex="1" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <label for="TextBox6" class="display-block font14 marginBottom5 textWhite left5p">Address</label>
            <asp:TextBox ID="TextBox6" TabIndex="2" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <label for="TextBox7" class="display-block font14 marginBottom5 textWhite left5p">Phone</label>
            <asp:TextBox ID="TextBox7" type="number" TabIndex="2" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <label for="TextBox8" class="display-block font14 marginBottom5 textWhite left5p">Description</label>
            <asp:TextBox ID="TextBox8"  TabIndex="3" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <label for="TextBox9" class="display-block font14 marginBottom5 textWhite left5p">Amount</label>
            <asp:TextBox ID="TextBox9" type="number" TabIndex="4" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <input id="Button4" type="button"  value="Submit"  class="button width187" />
        </div>
           <div class="boxShow width53">
            <i class="fa fa-times close" aria-hidden="true"></i>
        
            <label for="TextBox3" id ="12" class="display-block font14 marginBottom14 textWhite left5p">Name: </label>
            <label for="TextBox4" id ="13"class="display-block font14 marginBottom14 textWhite left5p">Phone: </label>
                  <label for="TextBox4" id ="14"class="display-block font14 marginBottom14 textWhite left5p">Address: </label>
            <label for="TextBox2" id ="15" class="display-block font14 marginBottom14 marginTop5p textWhite left5p">Status: </label>
                  <label for="TextBox4" id ="16"class="display-block font14 marginBottom14 textWhite left5p">Amount: </label>
            <label for="TextBox2" id ="17" class="display-block font14 marginBottom14 marginTop5p textWhite left5p">Description: </label>
            <label for="TextBox3" id ="18" class="display-block font14 marginBottom14 textWhite left5p">Comment: </label>
            <label for="TextBox3" id ="19" class="display-block font14 marginBottom14 textWhite left5p">Date: </label>
            
        </div>
        <div class="boxPass width53">
            <i class="fa fa-times close" aria-hidden="true"></i>
        
            <label for="TextBox2"  class="display-block font14 marginBottom5 marginTop5p textWhite left5p">Old Password</label>
            <asp:TextBox ID="TextBox2" type ="password" TabIndex="1" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <label for="TextBox3"  class="display-block font14 marginBottom5 textWhite left5p">New Password</label>
            <asp:TextBox ID="TextBox3" type ="password" TabIndex="2" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <label for="TextBox4" class="display-block font14 marginBottom5 textWhite left5p">Confirm New Password</label>
            <asp:TextBox ID="TextBox4" type ="password" TabIndex="3" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" class="button width187" />
        </div>

        <div class="boxEdit width53">
            <i class="fa fa-times close" aria-hidden="true"></i>
        
            <label for="TextBox10" class="display-block font14 marginBottom5 marginTop5p textWhite left5p">Email</label>
            <asp:TextBox ID="TextBox10" type ="email" TabIndex="1" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <label for="TextBox11" class="display-block font14 marginBottom5 textWhite left5p">Company Name</label>
            <asp:TextBox ID="TextBox11" TabIndex="2" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <label for="TextBox12" class="display-block font14 marginBottom5 textWhite left5p">Address</label>
            <asp:TextBox ID="TextBox12" TabIndex="3" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <label for="TextBox13"  class="display-block font14 marginBottom5 textWhite left5p">Phone Number</label>
            <asp:TextBox ID="TextBox13" type="number" TabIndex="3" runat="server" class="display-block marginBottom15 input width187"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" class="button width187" />
        </div>
  

    <!-- HEADER -->
    <header role="banner">    
      <!-- Top Bar -->
      <div class="top-bar background-white">
        <div class="line">
       <%--   <div class="s-12 m-6 l-6">
            <div class="top-bar-contact">
              <p class="text-size-12">Contact Us: 01019267245 | <a class="text-orange-hover" href="mailto:loadbugs@gmail.com">loadbugs@gmail.com</a></p>
            </div>
          </div>--%>
          <div class="s-12 m-6 l-6">
            <div class="right">
                <asp:Button ID="Button1" CssClass="right signout pointer" runat="server" OnClick="Button1_Click" Text="SignOut" />
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
              <li><a href="/" class="marginLeft2">Home</a></li>
              <li><a href="contact.aspx" class="marginLeft2">Contact Us</a></li>
              <li><a href="about.aspx" class="marginLeft2">About</a></li>
              <li><a runat="server" id="account" href="Login.aspx" class="marginLeft2">Order</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </header>
      <div>
        <input id="search" class="reset-this abbc left3 marginTop10" type="text" placeholder="Search"/>
        <button type="button" class="reset-this left3 marginTop10 pointer" style="color: black; background-color: transparent;" id="bttn" ><i class="fa fa-search marginTop10 green" aria-hidden="true"></i></button>
    </div>
     <div>
        <br />
        <div id="mimi" style="height: 390px;width: 100%;" class="centerPosition">
            <table id="list" >
                <tr>
                    <td />
                </tr>
            </table>
            <div id="pager"></div>
        </div>

        
        
         
    </div>

    

    <footer class="alignLeft darkBlue textWhite bar">
        <div id="order" class="inlineBlock hoverGreen height56 verAlign width32p center left2p">New Order</div>
        <div id="edit" class="inlineBlock hoverGreen height56 verAlign width32p center">Edit Account</div>
        <div id="password" class="inlineBlock hoverGreen height56 verAlign width32p center">Change Password</div>
    </footer>
           </form>

    <script type="text/javascript" src="Scripts/responsee.js"></script>
    <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="Scripts/template-scripts.js"></script>
     <script type="text/javascript">
         $(document).ready(function () {
             var init = "<%= init %>";
             $("#<%=Button3.ClientID %>").button().click(function () {

                 if ($("#<%=TextBox10.ClientID %>").val() == "" || $("#<%=TextBox11.ClientID %>").val() == "" || $("#<%=TextBox12.ClientID %>").val() == "" || $("#<%=TextBox13.ClientID %>").val() == "") {
                     return false;
                 }
                 else return true;
             });
             $("#Button4").click(function () {
                 if ($("#<%=TextBox5.ClientID %>").val() == "" || $("#<%=TextBox6.ClientID %>").val() == "" || $("#<%=TextBox7.ClientID %>").val() == "" || $("#<%=TextBox9.ClientID %>").val() == "") {
                     $(".error").show();
                     $(".error").text("Incomplete Fields!");
                     return false;
                 }
                 else {
                     var num; if (isNaN(parseInt(document.getElementById('TextBox7').value)) || isNaN(parseFloat(document.getElementById('TextBox9').value))) { $("#erorr").show(); return false; } else {
                         num = document.getElementById('TextBox7').value;
                         if (num.length == 11 || num.length == 8) {
                             $.ajax({
                                 method: "POST",
                                 data: { id: "<%= id %>", init: "<%= init %>",awb: $("#<%=TextBox1.ClientID %>").val(), a: $("#<%=TextBox6.ClientID %>").val(), b: $("#<%=TextBox5.ClientID %>").val(), c: $("#<%=TextBox7.ClientID %>").val(), d: $("#<%=TextBox8.ClientID %>").val(), e: "<%= nom %>", f: $("#<%=TextBox9.ClientID %>").val() },
                                 url: 'WebService.asmx/add_row',
                                 success: function () {
                                     $(".error").hide();
                                     $(".boxNew").hide();
                                     $("#<%=TextBox6.ClientID %>").val("");
                                     $("#<%=TextBox7.ClientID %>").val("");
                                     $("#<%=TextBox5.ClientID %>").val("");
                                     $("#<%=TextBox8.ClientID %>").val("");
                                     $("#<%=TextBox9.ClientID %>").val("");
                                     $("#list").trigger("reloadGrid");

                                 }

                             });

                         }
                         else {
                             $(".error").show();
                             $(".error").text("Wrong Phone Format");


                             return false;
                         }
                     }
                 }
             });
             $("#<%=Button2.ClientID %>").button().click(function () {

                 if ($("#<%=TextBox2.ClientID %>").val() == "" || $("#<%=TextBox4.ClientID %>").val() == "" || $("#<%=TextBox3.ClientID %>").val() == "") {
                     return false;
                 }
                 else if ($("#<%=TextBox4.ClientID %>").val() != $("#<%=TextBox3.ClientID %>").val()) {

                     return false;
                 }
                 else return true;
             });
         });
         </script>
    <script type="text/javascript">
        var lll = "";
        function add(x) {
            var data = $("#list").jqGrid('getRowData', x);
            $("#12").text("Name: "+data.name);
            $("#13").text("Address: "+data.address);
            $("#14").text("Status: "+data.status);
            $("#15").text("Phone: "+ data.phone);
            $("#16").text("Amount: "+data.amount);
            $("#17").text("Description: "+data.description);
            $("#18").text("Comment: "+data.sho);
            $("#19").text("Date: "+data.date);
            $(".boxShow").show();

        }
        function addd(x) {

            if (lll == "") {
                var rr = confirm("if you want to print one order only press ok ");
                if (rr == true) {

                    window.open("WebForm3.aspx?=" + x);

                } else {
                    lll = x;
                }
            } else {
                window.open("WebForm3.aspx?=" + yyy + "&a=" + lll + "&b=" + x);
                lll = "";
            }
        }

        jQuery(document).ready(function () {
            var id = "<%= id %>";
            if (!(id.toUpperCase() == "Palma".toUpperCase()))
            {
                $("#Laglo").hide();
                $("#<%=TextBox1.ClientID %>").hide();
            }
            var name = "";
            var count = 0;

            $("#bttn").click(function () {
                name = $("#search").val();
                $("#list").setGridParam({ postData: { id: id, name: name } });
                $("#list").trigger("reloadGrid");
            });
            $('.enter').keydown(function (e) {
                if (e.keyCode == 13) {
                    return false;
                }
            });
            $("#search").keydown(function (e) {
                if (e.keyCode == 13) {
                    name = $("#search").val();
                    $("#list").setGridParam({ postData: { id: id, name: name } });
                    $("#list").trigger("reloadGrid");
                    return false;
                }
            });

            //if the window is greater than 440px wide then turn on jScrollPane..
            var grid = $("#list");
            grid.jqGrid({
                datatype: "json",
                mtype: 'POST',
                postData: { id: "<%= id %>", name: name },
                url: 'WebService.asmx/get_u_rows',
                colNames: ['id','AWB', 'Name', 'Address ', 'Status', 'Phone', 'Amount', 'Description', 'comment','Date', 'show','Print'],
                colModel: [
       { name: 'id', index: 'id', width: 60, sorttype: "int", Key: true , hidden : true},
         { name: 'ido', index: 'ido', width: 60 },
       { name: 'name', index: 'name', width: 120, editable: true },
              { name: 'address', index: 'address', width: 250, editable: true },

       { name: 'status', index: 'status', width: 100 },
                //   		{ name: 'Expectations', index: 'Expect', width: 120, align: "right", sorttype: "float", editrules: { number: true }, editable: true },

            { name: 'phone', index: 'phone', width: 100, align: "center", sorttype: "float", editrules: { number: true }, editable: true },
              { name: 'amount', index: 'amount', width: 80, align: "center", sorttype: "float", editrules: { number: true }, editable: true },
            { name: 'description', index: 'description', width: 80, align: "center", sorttype: "float", editable: true },
                                     { name: 'sho', index: 'sho', width: 80, align: "center", sorttype: "float" },
                                     { name: 'date', index: 'date', width: 80, align: "center", sorttype: "float" },

            { name: 'show', index: 'show', width: 80, align: "center", sorttype: "float", editable: true, hidden: true },
                 { name: 'print', index: 'print', width: 60, align: "center", sorttype: "float" }, ],
                'cellEdit': true,
                'cellsubmit': 'remote',
                cellurl: 'WebService.asmx/edit_FF',
                afterSaveCell: function (rowid, celname, value, iRow, iCol) {

                    setTimeout(function () { $("#list").trigger("reloadGrid"); }, 1000);

                },





                headertitles: true,

                pager: '#pager',
                sortname: 'id',
                viewrecords: false,
                pgbuttons: false,
                rowNum: 9999,
                pginput: false,
                multiselect: true,
                height: 300,
                sortorder: "desc",


                caption: "Orders"


            });
            if (count == 0) {
                $("#list").navGrid("#pager", { edit: false, add: false, del: false, search: false });
                $("#list").navButtonAdd('#pager', {
                    caption: "",
                    buttonicon: "ui-icon-trash",
                    onClickButton: function () {
                        var r = confirm("If you are sure that you want to delete press Ok");
                        if (r == true) {

                            var selRowId = $("#list").jqGrid('getGridParam', 'selarrrow');



                            $.ajax({
                                method: "POST",
                                data: { id: selRowId.toString() },
                                url: 'WebService.asmx/Delete',
                                success: function () {
                                    $("#list").trigger("reloadGrid");
                                }

                            });



                        } else {

                        }
                    }
                }); count = count + 1;
            }

            function checkWidth() {
                var windowsize = $(window).width();
                if (windowsize < 1100) {
                    $("#options").show();
                    $("#sidebar-wrapper").hide();
                }
                if (windowsize < 1000) {
                    $("#list").showCol("show");


                    $("#list").hideCol("address");
                    $("#list").hideCol("description");
                    $("#list").hideCol("print");
                    if (windowsize < 700) {
                        $("#list").hideCol("phone");
                    }
                    if (windowsize < 500) {
                        $("#list").hideCol("status");

                    }
                }
                if (windowsize > 500) {
                    $("#list").showCol("status");
                    if (windowsize > 700) {
                        $("#list").showCol("phone");
                    }
                    if (windowsize > 1000) {

                        $("#list").showCol("address");
                        $("#list").showCol("description");
                        $("#list").hideCol("show");
                        $("#list").showCol("print");

                    }
                    if (windowsize > 1100) {
                        $("#options").hide();
                        $("#sidebar-wrapper").show();
                    }
                }
                $("#list").trigger("reloadGrid");


            }

            // Execute on load
            checkWidth();
            // Bind event listener
            $(window).resize(checkWidth);



        });
    </script>
   </body>
</html>