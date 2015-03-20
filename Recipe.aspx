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
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe %>" DeleteCommand="DELETE FROM [xliang1_recipe] WHERE [rID] = @rID" InsertCommand="INSERT INTO [xliang1_recipe] ([rID], [r_name], [sub_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes]) VALUES (@rID, @r_name, @sub_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @prep, @notes)" SelectCommand="SELECT * FROM [xliang1_recipe]" UpdateCommand="UPDATE [xliang1_recipe] SET [r_name] = @r_name, [sub_by] = @sub_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [prep] = @prep, [notes] = @notes WHERE [rID] = @rID">
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
        <span class="deletedRecipe"><asp:Label ID="lbl_deletedRecipe" runat="server"></asp:Label></span>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="rID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="rID" HeaderText="rID" ReadOnly="True" SortExpression="rID" />
                <asp:BoundField DataField="r_name" HeaderText="r_name" SortExpression="r_name" />
                <asp:BoundField DataField="sub_by" HeaderText="sub_by" SortExpression="sub_by" />
                <asp:BoundField DataField="ing_1" HeaderText="ing_1" SortExpression="ing_1" />
                <asp:BoundField DataField="ing_2" HeaderText="ing_2" SortExpression="ing_2" />
                <asp:BoundField DataField="ing_3" HeaderText="ing_3" SortExpression="ing_3" />
                <asp:BoundField DataField="ing_4" HeaderText="ing_4" SortExpression="ing_4" />
                <asp:BoundField DataField="ing_5" HeaderText="ing_5" SortExpression="ing_5" />
                <asp:BoundField DataField="prep" HeaderText="prep" SortExpression="prep" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    </form>
</body>
</html>
