<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm3.aspx.cs" Inherits="WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/myStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="width70 left15 position-relative margin-top100">Loadbugs<br/>62, Street 13, Maadi Sarayat Al Gharbeyah, Cairo Governorte</div>
    <div class="border padding width70 left15">
        <div style ="display : inline-block ;width: 50%">Order from: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
        <div style ="display : inline-block; width: 40%">AWB: <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></div>
        <div class="inline-block margin-top vertical-align">Ship To: </div>
        <div class="inline-block margin-top margin-left">Name: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br/><br/>Address: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><br/><br/>Phone: <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></div>
        <div style=" position:absolute;
    bottom: 30px;
    left: 100px;">Signature: </div>
        <div class="amount-position">Amount: <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></div>
    </div>
    <div id="hhh" class="width70 left15 position-relative margin-top100" style="display: none;" runat="server" >Loadbugs<br/>151, Street 13, Maadi Sarayat Al Gharbeyah, Cairo Governorte</div>
    <div id="hh" class="border padding width70 left15" style="display: none;" runat="server" >
        <div style ="display : inline-block ;width: 50%">Order from: <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></div>
         <div style ="display : inline-block; width: 40%">AWB: <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></div>
        <div class="inline-block margin-top vertical-align">Ship To: </div>
        <div class="inline-block margin-top margin-left">Name: <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label><br/><br/>Address: <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label><br/><br/>Phone: <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></div>
        <div style=" position:absolute;
    bottom: 30px;
    left: 100px;">Signature: </div>
        <div class="amount-position">Amount: <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></div>
    </div>
</body>
</html>

