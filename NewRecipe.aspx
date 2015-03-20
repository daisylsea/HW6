<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="NewRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_recipe %>" SelectCommand="SELECT [r_name], [sub_by], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes] FROM [xliang1_recipe]">
        </asp:SqlDataSource>
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                 </EditItemTemplate>
            <InsertItemTemplate>
               
                <table>
                    <tr>
                        <td style="text-align: right; background-color:lightblue;">
                            Recipe Name
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("r_name") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Please enter the name of the new recipe!" CssClass="validationError" ControlToValidate="tb_recipeName"></asp:RequiredFieldValidator>
                        </td>
                    
                    
                    </tr>
                         <td style="text-align: right; background-color:lightblue;">
                             Submitted By
                         </td>

                    <td style="text-align:left;">
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("sub_by") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfv_sub" runat="server" ErrorMessage="Please enter the person whom submitted the new recipe!"CssClass="validationError"></asp:RequiredFieldValidator>
                    </td>




                </table>
                
                
                
                
                
                
                
                 r_name:
                <asp:TextBox ID="r_nameTextBox" runat="server" Text='<%# Bind("r_name") %>' />
                <br />
                sub_by:
                <asp:TextBox ID="sub_byTextBox" runat="server" Text='<%# Bind("sub_by") %>' />
                <br />
                ing_1:
                <asp:TextBox ID="ing_1TextBox" runat="server" Text='<%# Bind("ing_1") %>' />
                <br />
                ing_2:
                <asp:TextBox ID="ing_2TextBox" runat="server" Text='<%# Bind("ing_2") %>' />
                <br />
                ing_3:
                <asp:TextBox ID="ing_3TextBox" runat="server" Text='<%# Bind("ing_3") %>' />
                <br />
                ing_4:
                <asp:TextBox ID="ing_4TextBox" runat="server" Text='<%# Bind("ing_4") %>' />
                <br />
                ing_5:
                <asp:TextBox ID="ing_5TextBox" runat="server" Text='<%# Bind("ing_5") %>' />
                <br />
                prep:
                <asp:TextBox ID="prepTextBox" runat="server" Text='<%# Bind("prep") %>' />
                <br />
                notes:
                <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
           
                 
                     </InsertItemTemplate>
            <ItemTemplate>
    
               </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
