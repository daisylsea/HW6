<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Wicked Easy Recipes<br />
        Using 5 Ingredients or Less!<br />
        <br />
        <asp:HyperLink ID="hl_Home" runat="server">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="hl_new" runat="server">New Recipe</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="hl_about" runat="server">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="hl_contact" runat="server" NavigateUrl="./ContactUS.aspx">Contact</asp:HyperLink>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe %>" SelectCommand="SELECT [r_name], [sub_by] FROM [xliang1_recipe]">
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="419px">
            <Columns>
                <asp:BoundField DataField="r_name" HeaderText="Recipe Name" SortExpression="r_name" />
                <asp:BoundField DataField="sub_by" HeaderText="Submitted By" SortExpression="sub_by" />
                <asp:HyperLinkField DataNavigateUrlFields ="rID" DataNavigateUrlFormatString ="Recipe.aspx?rID={0}" Text="Select" />

            </Columns>
        </asp:GridView>
        <br />
        <br />
        <footer>
            <p>
                © 2015 Wicked Easy Recipes</p>
        </footer>
    
    </div>
    </form>
</body>
</html>
