<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="NewRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Recipe</title>
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
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="rID" DefaultMode="Insert">
            <EditItemTemplate>
                  </EditItemTemplate>
           <InsertItemTemplate>
               <table>
                   <tr>
                       <td style="text-align:right; background-color:lightcoral">
                          Recipe Name 
                       </td>
                       <td style="text-align:left">
                           <asp:TextBox ID="tb_rName" runat="server" Text='<%# Bind("r_name") %>' />
                       </td>
                       <td style="text-align:left">
                           <asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Please enter the name of the new recipe!" ControlToValidate="tb_rName"></asp:RequiredFieldValidator>
                       </td>
                   </tr>

                     <tr>
                       <td style="text-align:right; background-color:lightcoral">
                           Submitted By
                       </td>
                       <td style="text-align:left">
                           <asp:TextBox ID="tb_subBy" runat="server" Text='<%# Bind("sub_by") %>' />
                       </td>
                       <td style="text-align:left">
                           <asp:RequiredFieldValidator ID="rfv_subBy" runat="server" ErrorMessage="Please enter the person who submitted the new recipe!" ControlToValidate="tb_subBy"></asp:RequiredFieldValidator>
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                           Ingredient #1
                       </td>
                       <td style="text-align:left">
                            <asp:TextBox ID="tb_ing1" runat="server" Text='<%# Bind("ing_1") %>' />
                       </td>
                       <td style="text-align:left">
                           <asp:RequiredFieldValidator ID="rfv_ing1" runat="server" ErrorMessage="Please enter at least one ingredient of the new recipe!" ControlToValidate="tb_ing1"></asp:RequiredFieldValidator>
                       </td>
                   </tr>

                   <tr>
                       <td style="text-align:right; background-color:lightcoral">
                           Ingredient #2
                       </td>
                       <td style="text-align:left">
                           <asp:TextBox ID="tb_ing2" runat="server" Text='<%# Bind("ing_2") %>' />
                        </td>
                    </tr>

                   <tr>
                       <td style="text-align:right; background-color:lightcoral">
                           Ingredient #3
                       </td>
                       <td style="text-align:left">
                            <asp:TextBox ID="tb_ing3" runat="server" Text='<%# Bind("ing_3") %>' />
                        </td>
                    </tr>

                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                           Ingredient #4
                       </td>
                       <td style="text-align:left">
                            <asp:TextBox ID="tb_ing4" runat="server" Text='<%# Bind("ing_4") %>' />
                        </td>
                    </tr>

                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                           Ingredient #5
                       </td>
                       <td style="text-align:left">
                             <asp:TextBox ID="tb_ing5" runat="server" Text='<%# Bind("ing_5") %>' />
                        </td>
                    </tr>

                    <tr>
                       <td style="text-align:right; background-color:lightcoral">
                           Preparation
                       </td>
                       <td style="text-align:left">
                             <asp:TextBox ID="tb_prep" runat="server" Text='<%# Bind("prep") %>' />
                       </td>
                       <td style="text-align:left">
                           <asp:RequiredFieldValidator ID="rfv_prep" runat="server" ErrorMessage="Please enter the preparation of the new recipe!" ControlToValidate="tb_prep"></asp:RequiredFieldValidator>
                       </td>
                   </tr>

                   <tr>
                       <td style="text-align:right; background-color:lightcoral">
                           Notes
                       </td>
                       <td style="text-align:left">
                              <asp:TextBox ID="tb_notes" runat="server" />
                        </td>
                    </tr>

                   <tr>
                       <td style="text-align:right;">
                             <asp:Button ID="btn_insert" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                       </td>
                       <td style="text-align:left">
                              <asp:Button ID="btn_cancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                    </tr>


               </table>
           
           
                 
                     </InsertItemTemplate>
            <ItemTemplate>
               </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
