
Partial Class SimpleWord_word
    Inherits System.Web.UI.Page

    Protected Sub PageOfficeCtrl1_Load(sender As Object, e As EventArgs) Handles PageOfficeCtrl1.Load
        ' 设置PageOffice组件服务页面
        PageOfficeCtrl1.ServerPage = Request.ApplicationPath + "/pageoffice/server.aspx"
        ' 设置保存文件页面
        PageOfficeCtrl1.SaveFilePage = "SaveFile.aspx"
        ' 打开文档
        PageOfficeCtrl1.WebOpen("doc/test.doc", PageOffice.OpenModeType.docNormalEdit, "Tom")
    End Sub
End Class
