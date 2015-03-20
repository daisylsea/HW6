
Partial Class Recipe
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim deletedRecipe As String = e.Values("r_name").ToString()

        lbl_deletedRecipe.Text = deletedRecipe & "has been deleted from the database."
        Response.AddHeader("REFRESH", "3;URL=./Defaut.aspx")

    End Sub


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("REFRESH", "3;URL=./Default.aspx")
    End Sub
End Class
