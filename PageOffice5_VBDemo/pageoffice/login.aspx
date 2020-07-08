<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="ZoomSeal.Sealservice.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css" title="currentStyle" media="screen" mce_bogus="1">
        #loginDiv
        {
            position: absolute; /*层漂浮*/
            top: 50%;
            left: 50%;
            width: 480px;
            height: 300px;
            margin-top: -150px; /*注意这里必须是DIV高度的一半*/
            margin-left: -240px; /*这里是DIV宽度的一半*/
            background: #fff;
            border: 1px solid #99ccff;
            color:gray;
            text-align:center;
			font-size: 16px;
			border-radius:3px
        }
        #titleDiv{
			margin:50px auto 20px auto; color:#478fca; font-weight:bold; text-align:left; height: 26px; width:220px; border-bottom: 1px solid #d5e3ef; 
		}
        table{width:100%;  text-align:center;}
		table td{height:46px}

		input[type="submit"] {background-color:#428bca; cursor:pointer;display:block;text-align:center; margin-left:180px;line-height:24px;  color: white; border: solid 3px  #428bca; height:32px; width:106px;padding:0px;font-size:16px;}
		input[type="submit"]:link    {background-color:#428bca;}
		input[type="submit"]:visited {background-color:#428bca;}
		input[type="submit"]:hover   {background-color:#1b6aaa;}




    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="loginDiv">
    <div id="titleDiv">
        <image  id="image0" style="vertical-align:bottom;"
    src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAIAAABvFaqvAAABZklEQVQ4EWP88+cPAzUAEzUMAZlBNYNY8Lho+c3Ps698uvL2F1CNpwKXpwJ3hBoPLvWMWMPo489/8bteHnv+A02bjjDbeh9JfnYs/sAiBNQcv/sVpilAcaDrgBagmQ7hYjEI6KNjz75jVQ0UBFoAVIApi8Wg7Q++YapDFsHqWCwGffr9H1kbJvsqOPjRxLEYhKYCk4vVHiwGyfIwY2pGFgHGHTIXwsZiUIQ6L6Y6ZBGsCrAYZC3JkabDj6wTmR2uxgNUgCwCYWMxCChRaiwgw4Ml0QMFWyyFMU0BimA3CCjByIhFPVZBiDrsBgFT9uPPWIoXoCAJKRtoA/6UjcWpuLwGDGxcYVRqLIjVIOy5H6tS/ILQqDn6/Ef8zpeffv3DrxpNlo+NaaG7OCQ1QAP72LMfpJoCNBSoBagRYjr2WEOzmRgu1GtWUhylDNhDEb8pQI0QBVCDgP589On3yltf8GtDk0XOLgAmf2xT5nnNggAAAABJRU5ErkJggg==" />
        印章管理</div>
        <div>
            <table >

            <tr>
                <td style="width:10%;">&nbsp;</td>
                <td style="width:80%">
                    <asp:TextBox ID="txtUserName" TabIndex="1"  runat="server" Font-Size="9pt" Height="24px" Width="216px" placeholder="用户名" value="admin"></asp:TextBox>
                </td>
                <td style="width:10%">&nbsp;</td>
            </tr>
            <tr>
                <td style="width:10%;">&nbsp;</td>
                <td style="width:80%">
                    <asp:TextBox ID="txtUserPw" TabIndex="2" runat="server" Font-Size="9pt" Height="24px"  Width="216px"  TextMode="Password" placeholder="密码" value=""></asp:TextBox>
                </td>
                <td style="width:10%">&nbsp;</td>
            </tr>
    
            <tr>
                <td>
                </td>
                <td style="height: 60px; ">
                    <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" TabIndex="3" />
                </td>
                <td>
                </td>
            </tr>

        </table>
        </div>

        
    </div>
    </form>
</body>
</html>
