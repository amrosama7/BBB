<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

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
    
    <link href="CSS/ui.jqgrid.css" rel="stylesheet" type="text/css" />
     
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
        <div class="boxCode width53" style="display:none;">
            <i class="fa fa-times close" aria-hidden="true"></i>
      
                <label for="TextBox1" class=" display-block font14 marginBottom5 marginTop10p textWhite left5p">Code</label>
                <asp:TextBox ID="TextBox1" TabIndex="1" runat="server" class="enter display-block marginBottom15 input width187"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" class="button width187" />
      
        </div>
        <div class="boxPass width53">
            <i class="fa fa-times close" aria-hidden="true"></i>
        
            <label for="TextBox2" class="display-block font14 marginBottom5 marginTop5p textWhite left5p">Old Password</label>
            <asp:TextBox ID="TextBox2" type ="password" TabIndex="1" runat="server" class=" enter display-block marginBottom15 input width187"></asp:TextBox>
            <label for="TextBox3" class="display-block font14 marginBottom5 textWhite left5p">New Password</label>
            <asp:TextBox ID="TextBox3" type ="password" TabIndex="1" runat="server" class="enter display-block marginBottom15 input width187"></asp:TextBox>
            <label for="TextBox4" class="display-block font14 marginBottom5 textWhite left5p">Confirm New Password</label>
            <asp:TextBox ID="TextBox4" type ="password" TabIndex="1" runat="server" class=" enter display-block marginBottom15 input width187"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" class="button width187" />
        </div>

         <div class="boxShow width53">
            <i class="fa fa-times close" aria-hidden="true"></i>
        
            <label for="TextBox2" id ="11" class="display-block font14 marginBottom14 marginTop5p textWhite left5p">Company Name: </label>
            <label for="TextBox3" id ="12" class="display-block font14 marginBottom14 textWhite left5p">Name: </label>
            <label for="TextBox4" id ="13"class="display-block font14 marginBottom14 textWhite left5p">Phone: </label>
                  <label for="TextBox4" id ="14"class="display-block font14 marginBottom14 textWhite left5p">Address: </label>
            <label for="TextBox2" id ="15" class="display-block font14 marginBottom14 marginTop5p textWhite left5p">Status: </label>
            <label for="TextBox3" id ="16" class="display-block font14 marginBottom14 textWhite left5p">Ship amount: </label>
            <label for="TextBox4" id ="17" class="display-block font14 marginBottom14 textWhite left5p">Company amount: </label>
                  <label for="TextBox4" id ="18"class="display-block font14 marginBottom14 textWhite left5p">Amount: </label>
            <label for="TextBox2" id ="19" class="display-block font14 marginBottom14 marginTop5p textWhite left5p">Description: </label>
            <label for="TextBox3" id ="20" class="display-block font14 marginBottom14 textWhite left5p">Comment: </label>
            <label for="TextBox3" id ="21" class="display-block font14 marginBottom14 textWhite left5p">Date: </label>
            
        </div>
   

    <!-- HEADER -->
    <header role="banner">    
      <!-- Top Bar -->
      <div class="top-bar background-white">
        <div class="line">
         <%-- <div class="s-12 m-6 l-6">
            <div class="top-bar-contact">
              <p class="text-size-12">Contact Us: 01019267245  | <a class="text-orange-hover" href="mailto:loadbugs@gmail.com">loadbugs@gmail.com</a></p>
            </div>
          </div>--%>
          <div class="s-12 m-7 l-7">
            <div class="right">
                <asp:Button ID="Button4" class="right pointer signout" runat="server" OnClick="Button4_Click"  Text="SignOut" />
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
        <div id="mimi" class="hamada" style="height: 390px; max-width: 1200px; " >
            <table id="list" style="overflow-x: auto;">
                <tr>
                    <td />
                </tr>
            </table>
            <div id="pager" ></div>
        </div>

        
        
         
    </div>
        <asp:Label ID="Label1" style ="display :none;" runat="server" ></asp:Label><asp:Label ID="Label2" style ="display :none;"  runat="server" ></asp:Label>

    <div id="osos" class="centerPosition" style="height: 390px;">
                
        <table id="list2" >
            <tr>
                <td />
            </tr>
        </table>
         <div id="pager2"></div>
    </div>
    
    <footer class="alignLeft darkBlue textWhite bar">
        <div class="inlineBlock height56 verAlign width30p center marginLeft2p position-relative">
            <asp:Button ID="Button3" OnClick="Button3_Click" class="pointer"  runat="server" Text="Download"/> </div>
        
        <div class=" bttn inlineBlock hoverGreen height56 verAlign width30p center">Users</div>
        <div class="kolo3alakolo inlineBlock hoverGreen height56 verAlign width30p center">Orders</div>
        <div id="code" class="inlineBlock hoverGreen height56 verAlign width30p center">Add code</div>
        <div id="password" class="inlineBlock hoverGreen height56 verAlign width30p center">Change Password</div>
<%--        <div id= "signout" class="inlineBlock hoverGreen height56 verAlign width30p center"> SignOut</div>--%>
    </footer>
          </form>

    <script type="text/javascript" src="Scripts/responsee.js"></script>
    <script type="text/javascript" src="owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="Scripts/template-scripts.js"></script>
     <script type="text/javascript">
         $(document).ready(function () {
             $("#<%=Button1.ClientID %>").click(function () {
                 if ($("#<%=TextBox1.ClientID %>").val() == "")
                     return false;
                 else return true;
             });
             $("#<%=Button2.ClientID %>").click(function () {
                 if ($("#<%=TextBox2.ClientID %>").val() == "" || $("#<%=TextBox3.ClientID %>").val() == "" || $("#<%=TextBox4.ClientID %>").val() == "") {
                    return false;
                }
                else if ($("#<%=TextBox4.ClientID %>").val() != $("#<%=TextBox3.ClientID %>").val()) {
                    // (document.getElementById("passchange")).style.visibility = "visible";
                    return false;
                }
                else return true;
            });
         });
         </script>
      <script type="text/javascript">
          var yyy = "eloss";
          var lll = "";
          function add(x) {
              
              var data = $("#list").jqGrid('getRowData', x);
              $("#11").text("Company Name: "+data.Expense1);
              $("#12").text("Name: "+data.name);
              $("#13").text("Phone: "+data.phone);
              $("#14").text("Address: "+data.address);
              $("#15").text("Status: "+data.M1);
              $("#16").text("Ship amount: "+data.samount);
              $("#17").text("Company amount: "+data.camount);

              $("#18").text("Amount: "+data.amount);
              $("#19").text("Description: "+data.description);
              $("#20").text("Comment: "+data.comment);
              $("#21").text("Date: " + data.date);
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
              $("#options").click(function () {
                  $("#sidebar-wrapper").toggle();
              });
              $("#signout").click(function () {
                  $(".boxPass").trigger('click');
              });




              $("#<%=Button3.ClientID %>").click(function () {
                 
                  $("#<%=Label1.ClientID %>").val(""+name);
                 
           
                    return true;

                });





            var id = 0;
            var name = "";
            var choice = "";
            $("#osos").hide();
            //$(window).on("resize", function () {
            //    var $grid = $("#list"),
            //        newWidth = $grid.closest(".ui-jqgrid").parent().width();
            //    $grid.jqGrid("setGridWidth", newWidth, true);
            //});
            $("#bttn").click(function () {
                name = $("#search").val();
                if (id == 0) {
                    $("#list").setGridParam({ postData: { id: id, name: name, u: choice } });
                    $("#list").trigger("reloadGrid");
                } else {
                    $("#list2").setGridParam({ postData: { id: id, name: name } });
                    $("#list2").trigger("reloadGrid");

                }
            });
            $('.abbc').keydown(function (e) {
                if (e.keyCode == 13) {
                    name = $("#search").val();
                    if (id == 0) {
                        $("#list").setGridParam({ postData: { id: id, name: name, u: choice } });
                        $("#list").trigger("reloadGrid");
                    } else {
                        $("#list2").setGridParam({ postData: { id: id, name: name } });
                        $("#list2").trigger("reloadGrid");

                    }
                    return false;
                }
            });
            $('.enter').keydown(function (e) {
                if (e.keyCode == 13) {
                    return false;
                }
            });
            $(".bttn").click(function () {

                $("#mimi").hide();
                $("#osos").show();
                id = 1;
                $("#list2").setGridParam({ postData: { id: id, name: name } });
                $("#list2").trigger("reloadGrid");


            });
            $(".kolo3alakolo").click(function () {
                $("#osos").hide();
                $("#mimi").show();
                id = 0;
                choice = "";
                $("#list").setGridParam({ postData: { id: id, name: name, u: "" } });
                $("#list").trigger("reloadGrid");

            });

            var ReasonTerm = "Preparing for Shipment:Preparing for Shipment;Shipped:Shipped;Delivered:Delivered;Processing items:Processing items;failed:failed";
            var grid = $("#list");
            grid.jqGrid({
                datatype: "json",
                mtype: 'POST',
                postData: { id: id, name: name, u: choice },
                url: 'WebService.asmx/get_rows',
                colNames: ['*', 'ID','AWB','user', 'CompanyName ', 'name', 'phone', 'address', 'status', 'ship_amount', 'company_amount', 'amount', 'description', 'comment','Date', 'show', 'print'],
                colModel: [
                     { name: 'new', index: 'new', width: 20 },
       { name: 'id', index: 'id', width: 60, sorttype: "int", Key: true, hidden: true },
       { name: 'ido', index: 'ido', width: 60 },
       { name: 'Month', index: 'Month', width: 100, hidden: true },
      
              { name: 'Expense1', index: 'Expense1', width: 100 },


 { name: 'name', index: 'name', width: 80, align: "center", sorttype: "float", editable: true },
            { name: 'phone', index: 'phone', width: 100, align: "center", sorttype: "float", editrules: { number: true }, editable: true },
             { name: 'address', index: 'address', width: 80, align: "center", sorttype: "float", editable: true },
            { name: 'M1', index: 'M1', width: 140, align: "center", sorttype: "float", editable: true, edittype: 'select', editoptions: { value: ReasonTerm } },
       { name: 'samount', index: 'samount', width: 80, align: "center", sorttype: "float" },
        { name: 'camount', index: 'camount', width: 80, align: "center", sorttype: "float" },
            { name: 'amount', index: 'amount', width: 80, align: "center", sorttype: "float", editrules: { number: true }, editable: true },
            { name: 'description', index: 'description', width: 100 },

            { name: 'comment', index: 'comment', width: 80, align: "center", sorttype: "float", editable: true },
                { name: 'date', index: 'date', width: 80, align: "center", sorttype: "float" },
            { name: 'show', index: 'show', width: 40, align: "center", sorttype: "float", hidden: true },
                        { name: 'print', index: 'print', width: 60, align: "center", sorttype: "float" },

                ],
                'cellEdit': true,
                'cellsubmit': 'remote',
                cellurl: 'WebService.asmx/edit_F',
                afterSaveCell: function (rowid, celname, value, iRow, iCol) {

                    setTimeout(function () { $("#list").trigger("reloadGrid"); }, 1000);

                },
                onCellSelect: function (rowid, celname, value, iRow, iCol) {
                    var data = $("#list").jqGrid('getRowData',rowid);
                    if(data.new == "*")
                    {
                        data.new = "";
                        $('#list').jqGrid('setRowData', rowid, data);
                        $.ajax({
                            method: "POST",
                            data: { id: rowid.toString() },
                            url: 'WebService.asmx/done'
                           

                        });
                    }

                },






                headertitles: true,

                pager: '#pager',
                sortname: 'id',
                multiselect: true,
                rowNum: 9999,
                viewrecords: false,
                pgbuttons: false,
                pginput: false,
                height: 300,
                shrinkToFit: true,

                //multiselect: true,
                sortorder: "desc",
                caption: "Orders",

            });
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
                            url: 'WebService.asmx/Delete3',
                            success: function () {
                                $("#list").trigger("reloadGrid");
                            }

                        });



                    } else {

                    }
                }
            });
            $("#list2").jqGrid({
                datatype: "json",
                mtype: 'POST',
                postData: { id: id, name: name },
                url: 'WebService.asmx/get_rows2',
                colNames: ['id', 'Company', 'Phone', 'Email', 'Home_n', 'Address','amount'],
                colModel: [
                    { name: 'Company_', index: 'Company', width: 60, sorttype: "int", Key: true, hidden: true },
       { name: 'Company_name', index: 'Company_name', width: 150, sorttype: "int" },
       { name: 'Phone_number', index: 'Phone_number', width: 100, },
              { name: 'Email', index: 'Email', width: 200 },

       { name: 'Home_number', index: 'Home_number', width: 100,  hidden: true },
                //   		{ name: 'Expectations', index: 'Expect', width: 120, align: "right", sorttype: "float", editrules: { number: true }, editable: true },

            { name: 'Address', index: 'Address', width: 400, align: "center", sorttype: "float"},
                { name: 'amount', index: 'amount', width: 77, align: "center", sorttype: "float", editrules: { number: true }, editable: true },
                ],
                'cellEdit': true,
                'cellsubmit': 'remote',
                cellurl: 'WebService.asmx/edit_U',
                onCellSelect: function (rowid, celname, value, iRow, iCol) {

                    if (celname == 2) {

                        choice = rowid;
                        document.getElementById('Label2').innerText = "" + choice;
                        $("#osos").hide();
                        $("#mimi").show();
                        id = 0;
                        $("#list").setGridParam({ postData: { id: id, name: name, u: choice } });
                      //  choice = "";

                        $("#list").trigger("reloadGrid");

                    }

                },
                afterSaveCell: function (rowid, celname, value, iRow, iCol) {

                    setTimeout(function () { $("#list2").trigger("reloadGrid"); }, 1000);

                },








                headertitles: true,

                pager: '#pager2',
                sortname: 'id',
                viewrecords: false,
                pgbuttons: false,
                pginput: false,
                rowNum: 9999,
                multiselect: true,
                sortorder: "desc",
                height: 300,


                caption: "users"


            });

            $("#list2").navGrid("#pager2", { edit: false, add: false, del: false, search: false });
     

            function checkWidth() {
                var windowsize = $(window).width();
                if (windowsize < 1150) {
                    $("#options").show();
                    $("#sidebar-wrapper").hide();
                }
                if (windowsize < 1000) {
                    $("#list").showCol("show");
                    $("#list").hideCol("Expense");
                    $("#list").hideCol("amount");
                    $("#list").hideCol("camount");
                    $("#list").hideCol("samount");
                    $("#list").hideCol("print");
                    if (windowsize < 800) {

                        $("#list").hideCol("name");
                        $("#list").hideCol("M1");
                        $("#list").hideCol("description");
                        $("#list").hideCol("address");

                    }
                    if (windowsize < 600) {

                        $("#list").hideCol("name");
                        $("#list").hideCol("phone");
                    }
                }
                if (windowsize > 600) {
                    $("#list").showCol("name");
                    $("#list").showCol("phone");
                    if (windowsize > 800) {


                        $("#list").showCol("M1");
                        $("#list").showCol("description");
                        $("#list").showCol("address");
                    }
                    if (windowsize > 1000) {


                        $("#list").hideCol("show");
                        $("#list").showCol("Expense");
                        $("#list").showCol("amount");
                        $("#list").showCol("camount");
                        $("#list").showCol("samount");
                        $("#list").showCol("print");
                    }
                    if (windowsize > 1150) {
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

