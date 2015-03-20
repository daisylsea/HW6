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
        <asp:HyperLink ID="hl_Home" runat="server" NavigateUrl="./Default.aspx">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="hl_new" runat="server" NavigateUrl="./NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="hl_about" runat="server" NavigateUrl="./AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="hl_contact" runat="server" NavigateUrl="./ContactUS.aspx">Contact</asp:HyperLink>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe %>" SelectCommand="SELECT * FROM [xliang1_recipe]" DeleteCommand="DELETE FROM [xliang1_recipe] WHERE [rID] = @rID" InsertCommand="INSERT INTO [xliang1_recipe] ([rID], [r_name], [sub_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes]) VALUES (@rID, @r_name, @sub_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @prep, @notes)" UpdateCommand="UPDATE [xliang1_recipe] SET [r_name] = @r_name, [sub_by] = @sub_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [prep] = @prep, [notes] = @notes WHERE [rID] = @rID">
            <DeleteParameters>
                <asp:Parameter Name="rID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="rID" Type="Int32" />
                <asp:Parameter Name="r_name" Type="String" />
                <asp:Parameter Name="sub_by" Type="String" />
                <asp:Parameter Name="ing_1" Type="String" />
                <asp:Parameter Name="ing_2" Type="String" />
                <asp:Parameter Name="ing_3" Type="String" />
                <asp:Parameter Name="ing_4" Type="String" />
                <asp:Parameter Name="ing_5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="r_name" Type="String" />
                <asp:Parameter Name="sub_by" Type="String" />
                <asp:Parameter Name="ing_1" Type="String" />
                <asp:Parameter Name="ing_2" Type="String" />
                <asp:Parameter Name="ing_3" Type="String" />
                <asp:Parameter Name="ing_4" Type="String" />
                <asp:Parameter Name="ing_5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="rID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="419px" DataKeyNames="rID">
            <Columns>
                <asp:BoundField DataField="r_name" HeaderText="Recipe Name" SortExpression="r_name" />
                <asp:BoundField DataField="sub_by" HeaderText="Submitted By" SortExpression="sub_by" />
                <asp:HyperLinkField DataNavigateUrlFields="rID" DataNavigateUrlFormatString="Recipe.aspx?rID={0}" Text="Select"/>
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
