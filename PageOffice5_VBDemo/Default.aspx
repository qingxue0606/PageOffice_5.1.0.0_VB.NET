<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>PageOffice5 demo for VB.NET</title>
    <script type="text/javascript" src="pageoffice/js/pageoffice.js" ></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>PageOffice4 demo for VB.NET</h1>
    一、1、<a href="javascript:POBrowser.openWindowModeless('SimpleWord/Word.aspx', 'width=1200px;height=730px;frame=yes;fullscreen=no;resizable=no');" >最简单在线打开保存Word文件（URL地址方式）</a>
         <p>演示PageOffice实现最基本的在线打开保存服务器上Word文件的功能，也是最简单的一个集成PageOffice的示例，第一次接触PageOffice产品的用户可以参考此示例把PageOffice集成到自己的项目中。<span style="color:#333;">（此示例演示以窗口居中显示的方式打开文件。）</span></p>
    </div>
    </form>
</body>
</html>
