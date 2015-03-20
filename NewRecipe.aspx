<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="Recipe" %>

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
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe0 %>" DeleteCommand="DELETE FROM [xliang1_recipe0] WHERE [rID] = @rID" InsertCommand="INSERT INTO [xliang1_recipe0] ([r_name], [sub_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes]) VALUES (@r_name, @sub_by, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @prep, @notes)" SelectCommand="SELECT * FROM [xliang1_recipe0]" UpdateCommand="UPDATE [xliang1_recipe0] SET [r_name] = @r_name, [sub_by] = @sub_by, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [prep] = @prep, [notes] = @notes WHERE [rID] = @rID">
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="rID" DataSourceID="SqlDataSource1" DefaultMode="Insert" style="margin-right: 0px">
            <EditItemTemplate>
                 </EditItemTemplate>
            <InsertItemTemplate>
               <table>
                   <tr>
                       <td id="head"style="text-align:right; ">
                          Recipe Name 
                        </td>
                       <td id="text"style="text-align:left">
                       
                <asp:TextBox ID="tb_name" runat="server" Text='<%# Bind("r_name") %>' />
                </td>
                       <td>
                           <asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Please enter the name of recipe!" ControlToValidate="tb_name" CssClass="Error"></asp:RequiredFieldValidator>
                       </td>
                    </tr>
                   <tr>
                       <td id="head"style="text-align:right; ">
                         Submitted By
                        </td>
                       <td id="text"style="text-align:left">
                       
                <asp:TextBox ID="tb_sub" runat="server" Text='<%# Bind("sub_by")%>' />
                </td>
                       <td>
                           <asp:RequiredFieldValidator ID="rfv_sub" runat="server" ErrorMessage="Please enter your name!" ControlToValidate="tb_sub" CssClass="Error"></asp:RequiredFieldValidator>
                       </td>
                    </tr>
                   <tr>
                       <td id="head" style="text-align:right; ">
                          Ingredient #1
                        </td>
                       <td id="text"style="text-align:left">
                       
                <asp:TextBox ID="tb_ing1" runat="server" Text='<%# Bind("ing_1")%>' />
                </td>
                       <td>
                           <asp:RequiredFieldValidator ID="rfv_ing1" runat="server" ErrorMessage="Please enter at least one ingredient!" ControlToValidate="tb_ing1" CssClass="Error"></asp:RequiredFieldValidator>
                       </td>
                    </tr>
                 <tr>
                       <td id="head" style="text-align:right; ">
                          Ingredient #2
                        </td>
                       <td id="text"style="text-align:left">
                       
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ing_2")%>' />
                </td>
                    </tr>
                   <tr>
                       <td id="head"style="text-align:right; ">
                          Ingredient #3
                        </td>
                       <td id="text"style="text-align:left">
                       
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ing_3")%>' />
                </td>
                    </tr>
                  <tr>
                       <td id="head"style="text-align:right; ">
                          Ingredient #4
                        </td>
                       <td id="text"style="text-align:left">
                       
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ing_4")%>' />
                </td>
                    </tr>
                   <tr>
                       <td id="head"style="text-align:right; ">
                          Ingredient #5
                        </td>
                       <td id="text"style="text-align:left">
                       
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ing_5")%>' />
                </td>
                    </tr>
                   <tr>
                       <td id="head"style="text-align:right; ">
                          Preparation
                        </td>
                       <td id="text"style="text-align:left">
                       
                <asp:TextBox ID="tb_prep" runat="server" Text='<%# Bind("prep")%>' />
                </td>
                       <td>
                           <asp:RequiredFieldValidator ID="rfv_prep" runat="server" ErrorMessage="Please enter preparation process!" ControlToValidate="tb_prep" CssClass="Error"></asp:RequiredFieldValidator>
                       </td>
                    </tr>

                   <tr>
                       <td id="head"style="text-align:right; ">
                          Notes
                        </td>
                       <td id="text"style="text-align:left">
                       
                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("notes")%>' />
                </td>
                    </tr>
                   <tr>
                       
                <tr>
                       <td style="text-align:right; ">
                <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Save"  />
                           </td>
               <td style="text-align:left; color:lightcoral">
                    <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </td>
                    </table>
                   </InsertItemTemplate>
            <ItemTemplate>
                </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
        <br />
    </form>

    <footer>
            <p>
                © 2015 Wicked Easy Recipes</p>
        </footer>
    </center>
</body>
</html>
