<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recipe</title>
     <link rel="stylesheet" type="text/css" href="./stylesheet.css" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe %>" DeleteCommand="DELETE FROM [xliang1_recipe] WHERE [rID] = @rID" InsertCommand="INSERT INTO [xliang1_recipe] ([rID], [r_name], [sub_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes]) VALUES (@rID, @r_name, @sub_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @prep, @notes)" SelectCommand="SELECT * FROM [xliang1_recipe] WHERE ([rID] = @rID)" UpdateCommand="UPDATE [xliang1_recipe] SET [r_name] = @r_name, [sub_by] = @sub_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [prep] = @prep, [notes] = @notes WHERE [rID] = @rID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="rID" QueryStringField="rID" Type="Int32" />
            </SelectParameters>
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
        <span class="deletedRecipe"><asp:Label ID="lbl_deletedRecipe" runat="server"></asp:Label></span>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="rID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="rID" HeaderText="Recipe ID" ReadOnly="True" SortExpression="rID" />
                <asp:BoundField DataField="r_name" HeaderText="Recipe Name" SortExpression="r_name" />
                <asp:BoundField DataField="sub_by" HeaderText="Submitted By" SortExpression="sub_by" />
                <asp:BoundField DataField="ing_1" HeaderText="Ingredient #1" SortExpression="ing_1" />
                <asp:BoundField DataField="ing_2" HeaderText="Ingredient #2" SortExpression="ing_2" />
                <asp:BoundField DataField="ing_3" HeaderText="Ingredient #3" SortExpression="ing_3" />
                <asp:BoundField DataField="ing_4" HeaderText="Ingredient #4" SortExpression="ing_4" />
                <asp:BoundField DataField="ing_5" HeaderText="Ingredient #5" SortExpression="ing_5" />
                <asp:BoundField DataField="prep" HeaderText="Preparation" SortExpression="prep" />
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
