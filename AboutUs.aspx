<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
     Wicked Easy Recipes<br />
        Using 5 Ingredients or Less!<br />
        
        <br />
        <asp:HyperLink ID="hl_Home" runat="server" NavigateUrl="./Default.aspx">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="hl_new" runat="server" NavigateUrl="./NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="hl_about" runat="server" NavigateUrl="./AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="hl_contact" runat="server" NavigateUrl="./ContactUS.aspx">Contact</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
