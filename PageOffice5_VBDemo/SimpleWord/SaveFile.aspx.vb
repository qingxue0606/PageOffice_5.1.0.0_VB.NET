
Partial Class SimpleWord_SaveFile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim fs As PageOffice.FileSaver
        fs = New PageOffice.FileSaver()
        fs.SaveToFile(Server.MapPath("doc/") + fs.FileName)
        fs.Close()
    End Sub
End Class
