<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recipe</title>
     <link rel="stylesheet" type="text/css" href="./stylesheet.css" />
</head>
<body>
    <center>
    <form id="form1" runat="server">
    <div>
    
       <h1>Wicked Easy Recipes</h1><br />
        <h2>Using 5 Ingredients or Less!</h2><br />
        
        <br />
       <h3> <asp:HyperLink ID="hl_Home" runat="server" NavigateUrl="./Default.aspx">Home</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="hl_new" runat="server" NavigateUrl="./NewRecipe.aspx">New Recipe</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="hl_about" runat="server" NavigateUrl="./AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;|
        <asp:HyperLink ID="hl_contact" runat="server" NavigateUrl="./ContactUS.aspx">Contact</asp:HyperLink></h3>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe0 %>" DeleteCommand="DELETE FROM [xliang1_recipe0] WHERE [rID] = @rID" InsertCommand="INSERT INTO [xliang1_recipe0] ([r_name], [sub_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes]) VALUES (@r_name, @sub_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @prep, @notes)" SelectCommand="SELECT * FROM [xliang1_recipe0] WHERE ([rID] = @rID)" UpdateCommand="UPDATE [xliang1_recipe0] SET [r_name] = @r_name, [sub_by] = @sub_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [prep] = @prep, [notes] = @notes WHERE [rID] = @rID">
            <DeleteParameters>
                <asp:Parameter Name="rID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="rID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
               
                <table>
                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Recipe ID
                       </td>
                       <td style="text-align:left">
                           <asp:Label ID="rIDLabel1" runat="server" Text='<%# Eval("rID") %>' />
                       </td>
                        
                        </tr>

                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Recipe Name
                       </td>
                       <td style="text-align:left">
                           <asp:TextBox ID="tb_name" runat="server" Text='<%# Bind("r_name") %>' />
                       </td>
                        <td>
                        <asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Please enter name of the recipe!" ControlToValidate="tb_name" CssClass="Error"></asp:RequiredFieldValidator>
                        </td>
                            </tr>
                    
                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Submitted By
                       </td>
                       <td style="text-align:left">
                           <asp:TextBox ID="tb_subBy" runat="server" Text='<%# Bind("sub_by") %>' />
                       </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_sub" runat="server" ErrorMessage="Please enter your name!" ControlToValidate="tb_subBy" CssClass="Error"></asp:RequiredFieldValidator>
                        </td>
                        </tr>

                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Ingredient #1
                       </td>
                       <td style="text-align:left">
                            <asp:TextBox ID="tb_ing1" runat="server" Text='<%# Bind("ing_1") %>' />
                       </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_ing1" runat="server" ErrorMessage="Please enter as least one ingredient!" ControlToValidate="tb_ing1"></asp:RequiredFieldValidator>
                        </td>
                        </tr>

                     <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Ingredient #2
                       </td>
                       <td style="text-align:left">
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ing_2")%>' />
                       </td>
                        </tr>

                     <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Ingredient #3
                       </td>
                       <td style="text-align:left">
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ing_3")%>' />
                       </td>
                        </tr>
                     <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Ingredient #4
                       </td>
                       <td style="text-align:left">
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ing_4")%>' />
                       </td>
                        </tr>
                     <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Ingredient #5
                       </td>
                       <td style="text-align:left">
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ing_5")%>' />
                       </td>
                        </tr>
                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Preparation
                       </td>
                       <td style="text-align:left">
                            <asp:TextBox ID="tb_prep" runat="server" Text='<%# Bind("prep")%>' />
                       </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_prep" runat="server" ErrorMessage="Please enter preparation process!" ControlToValidate="tb_prep" CssClass="Error"></asp:RequiredFieldValidator>
                        </td>
                        </tr>

                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Notes
                       </td>
                       <td style="text-align:left">
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("notes")%>' />
                       </td>
                        </tr>

               <tr>
                       <td style="text-align:right; color:lightcoral">
                <asp:Button ID="btn_update" runat="server" CausesValidation="True" CommandName="Update" Text="Save" />
                    </td>
                        <td style="text-align:left; color:lightcoral">
                   <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                   </tr>
                    </table>
            </EditItemTemplate>
            <InsertItemTemplate>
                </InsertItemTemplate>
            <ItemTemplate>


                <table>
                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Recipe ID
                       </td>
                       <td style="text-align:left">
                            <asp:Label ID="rIDLabel" runat="server" Text='<%# Eval("rID") %>' />
                       </td>
                        </tr>

                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Recipe Name
                       </td>
                       <td style="text-align:left">
                          <asp:Label ID="r_nameLabel" runat="server" Text='<%# Bind("r_name") %>' />
                       </td>
                        </tr>
                    
                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Submitted By
                       </td>
                       <td style="text-align:left">
                           <asp:Label ID="sub_byLabel" runat="server" Text='<%# Bind("sub_by") %>' />
                       </td>
                        </tr>

                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Ingredient #1
                       </td>
                       <td style="text-align:left">
                             <asp:Label ID="ing_1Label" runat="server" Text='<%# Bind("ing_1") %>' />
                       </td>
                        </tr>

                     <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Ingredient #2
                       </td>
                       <td style="text-align:left">
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ing_2")%>' />
                       </td>
                        </tr>

                     <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Ingredient #3
                       </td>
                       <td style="text-align:left">
                             <asp:Label ID="Label2" runat="server" Text='<%# Bind("ing_3")%>' />
                       </td>
                        </tr>
                     <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Ingredient #4
                       </td>
                       <td style="text-align:left">
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("ing_4")%>' />
                       </td>
                        </tr>
                     <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Ingredient #5
                       </td>
                       <td style="text-align:left">
                             <asp:Label ID="Label4" runat="server" Text='<%# Bind("ing_1") %>' />
                       </td>
                        </tr>
                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Preparation
                       </td>
                       <td style="text-align:left">
                             <asp:Label ID="Label5" runat="server" Text='<%# Bind("prep")%>' />
                       </td>
                        </tr>

                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Notes
                       </td>
                       <td style="text-align:left">
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("notes")%>' />
                       </td>
                        </tr>

               <tr>
                       <td style="text-align:right; color:lightcoral">
               <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    </td>
                        <td style="text-align:left; color:lightcoral">
                   <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        </td>
                   </tr>
                    </table>



    
            </ItemTemplate>
        </asp:FormView>
        <br />
    </form>

    <footer>
            <p>
                © 2015 Wicked Easy Recipes</p>
        </footer>
    </center>
</body>
</html>
