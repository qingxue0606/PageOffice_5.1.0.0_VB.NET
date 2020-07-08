<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seal.aspx.cs" Inherits="ZoomSeal.Sealservice.seal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>印章管理</title>
    <style type="text/css">
        body, div, ul, li, h2, h5, h6, form, input, p, td
        {
            margin: 0;
            padding: 0;
            font-size: 14px;
            list-style: none;
        }
        ul
        {
            list-style: none;
        }
        h2, h5, h6
        {
            font-size: 100%;
        }
        h2
        {
            color: #5b3510;
            padding-bottom: 10px;
            font-size: 14px;
        }
        p
        {
            color: #5b3510;
            line-height: 22px;
        }
        .mc
        {
            margin: 0 auto;
        }
        .fs-12
        {
            font-size: 12px;
        }
        a:focus
        {
            outline: 0;
        }
        a
        {
            blr: expression(this.onFocus=this.blur());
        }
        /* for IE7.0及以下版本*/:focus
        {
            outline-style: none;
        }
        /* for Firefox，IE8.0等 */　 table
        {
            border-collapse: collapse;
            border-spacing: 0;
        }
        body
        {
            font: 12px/1.6 "宋体" ,Arial, Helvetica, sans-serif;
            font-family: Verdana, Arial, Helvetica, sans-serif;
        }
        a
        {
            text-decoration: none;
            cursor: pointer;
            color: #666;
        }
        a:hover
        {
            text-decoration: none;
        }
        a:active, a:focus
        {
            outline: none;
        }
        .clearfix:after
        {
            content: ".";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden;
            font-size: 0;
        }
        .clearfix
        {
            zoom: 1;
        }
        .clear
        {
            clear: both;
            height: 0;
            line-height: 0;
            font-size: 0;
        }
        .fl
        {
            float: left;
        }
        .fr
        {
            float: right;
        }
        .zz-contentRight
        {
            width: 1000px;
            height: auto !important;
            height: 452px;
            _height: expression(this.scrollHeight < 452 ? "652px" : "auto");
            min-height: 225px;
            margin: 0;
            padding-bottom: 50px;
        }
        /*head----------------------------------style*/
        .zz-headBox
        {
            width: 100%;
            height:80px;
        }
        .zz-head
        {
            width: 986px;
        }
        .zz-head .logo
        {
            width: 450px;
            height: 41px;
            padding-top: 30px;
        }
        .zz-head .headRight
        {
            width: 248px;
        }
        .zz-head .headRight
        {
            width: 493px;
            height: 78px;
            background-color: Gray;
        }
        .zz-head .headRight
        {
            width: 140px;
            height: 24px;
            background-color: Gray;
            margin: 0 10px 0 0;
            _margin: 0 5px 0 0;
        }
        .zz-head .headRight ul
        {
            width: 130px;
        }
        .zz-head .headRight ul li
        {
            width: 42px;
            height: 14px;
            line-height: 14px;
            margin-top: 5px;
            float: left;
            text-align: center;
            border-left: 1px solid #999;
        }
        .zz-head .headRight ul li.bor
        {
            border: none;
        }
        .zz-head .headRight ul li a
        {
            color: #656565;
            text-decoration: none;
        }
        .zz-head .headRight ul li a:hover
        {
            color: #656565;
            text-decoration: none;
        }
        /*head right*/
        .head-rightUl
        {
            width: 220px;
            margin-top: 35px;
        }
        .head-rightUl li
        {
            width: 100px;
            height: 42px;
            line-height: 14px;
            float: left;
            text-align: center;
        }
        .head-rightUl li.select {
	
	        border-bottom: 3px solid #1c84c6;
        }
        .head-rightUl li.select a{
	color:#1c84c6;
}


        /*a title*/
.topTitle {
	width: 100%;
	height: 28px;
	background: #00517e;
}

.topTitle ul {
	width: 986px;
	margin: 0 auto;
}

.topTitle ul li {
	overflow: hidden;
	padding: 0 16px;
	margin-top: 7px;
	float: left;
	line-height: 16px;
	color: #fff;
	border-left: 1px solid #2d7ca7;
}

.topTitle ul li.pd-left {
	border: none;
	padding-left: 0;
	color: #d0eaf8;
}

.topTitle ul li font {
	font-size: 12px;
	font-weight: bold;
	margin-right: 10px;
	color: #d0eaf8;
}

/*left*/
.left-ul {
	width: 162px;
	border: 1px solid #a4c8de;
}

.left-ul h2 {
	width: 162px;
	height: 34px;
	line-height: 34px;
	text-indent: 10px;
	background: #6096b2;
	padding: 0;
	color: #fff;
}

.left-ul li {
	width: 162px;
	height: 34px;
	margin: 0;
	padding: 0;
	line-height: 34px;
	background: #edf8fe;
	border-bottom: 1px solid #a4c8de;
	display: block;
	text-indent: 10px;
}

.left-ul li.bo-n {
	border-bottom: none;
}

.left-ul li a {
	text-decoration: none;
	display: block;
}

.left-ul li a:hover {
	text-decoration: none;
	background: #d0eaf7;
	display: block;
}

.zz-content {
	width: 986px;
	position: relative;
}

.zz-content.pd-28 {
	padding: 28px 0;
}

/*图片居中*/ /*图片居中*/
.frame {
	margin: 2px auto;
	height: 230px;
	width: 230px;
	overflow: hidden;
	background: white;
	position: static !important;
	position: relative;
	display: table !important;
	top: 0px;
	left: 0px;
	border: solid 1px #999;
}

/* 图片居中结束*/
.addtr {
	text-align: center;
	color: #333333;
	font-size: 12px;
}

.spanAdd {
	font-size: 14px;
}

.inputAdd {
	font-size: 14px;
	width: 260px;
	height:30px;
}

.titleAdd {
	font-size: 16px;
	font-weight: bold;
	text-align: center;
	border-bottom: dotted 1px #ccc;
	color:#666;
	height:25px;
}

.sealAdd {
	width: 70px;
	text-align: left;
}

.box{ position: absolute; width:260px; height:260px;  }

#topDiv{}
#topDiv a{ color:white}

table td{font-size:14px;}
table th{border:solid 1px #E7E7E7;}

.btn {background-color:#428bca; cursor:pointer;display:inline-block;text-align:center; line-height:32px;  color: white; border: solid 3px  #428bca; height:32px; width:100px;}
.btn :link    {background-color:#428bca;}
.btn :visited {background-color:#428bca;}
.btn :hover   {background-color:#1b6aaa;}

.btn2 {background-color:#23c6c8; cursor:pointer;display:inline-block;text-align:center; line-height:32px;  color: white; border: solid 3px  #23c6c8; height:32px; width:100px;}
.btn2 :link    {background-color:#23c6c8;}
.btn2 :visited {background-color:#23c6c8;}
.btn2 :hover   {background-color:#1b6aaa;}
    </style>

    <script type="text/javascript">
        //显示列表
        function ShowList() {
            if ('<%=flg %>'.toLowerCase()=="true") {
                document.getElementById("deleteAll").style.display = "none";
                document.getElementById("listDiv").style.display = "";
                document.getElementById("addDiv").style.display = "none";
                document.getElementById("addLi").classList.remove('select');
                document.getElementById("listLi").classList.add('select');
            }
            else{
                ShowDelAll();
            }
        }

        //显示添加印章信息
        function ShowAdd() {
            document.getElementById("deleteAll").style.display = "none";
            document.getElementById("addDiv").style.display = "";
            document.getElementById("listDiv").style.display = "none";
            document.getElementById("addLi").classList.add('select');
            document.getElementById("listLi").classList.remove('select');
        }

        //无印章时显示印章信息
        function ShowDelAll() {
            document.getElementById("deleteAll").style.display = "";
            document.getElementById("listDiv").style.display = "none";
            document.getElementById("addDiv").style.display = "none";
            document.getElementById("addLi").classList.remove('select');
            document.getElementById("listLi").classList.add('select');
        }

        function showSealImg(obj,src,id) {
            var x, y;
            oRect = obj.getBoundingClientRect();
            x = oRect.left;
            y = oRect.top;
            document.getElementById("img_seal").src = src;
            document.getElementById("sealImgDiv").style.top = y - 7 + "px";
            document.getElementById("sealImgDiv").style.left = x + 120 + "px";
            document.getElementById("sealImgDiv").style.display = "block";
            document.getElementById("idDiv").innerHTML = "编号：" + id;


        }


    </script>

</head>
<body>
    <form id="form1" runat="server">       
        <div id="topDiv" style="background-color:#1c84c6;height:45px;">
			<div style="max-width:1020px;margin:0 auto;color:white;">
				<div style="width:200px; float:left;margin-top:9px;font-size:16px;">&nbsp;&nbsp;&nbsp;电子印章简易管理平台</div>
				<div style="width:200px; float:right;margin-top:12px;">&nbsp;&nbsp;&nbsp;
					管理员：[<asp:Label ID="lblUserName" runat="server" Text="Label"></asp:Label>]

                    <a href="#">
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">退出</asp:LinkButton></a>


				</div>
			</div>
		</div>


    		<!--header-->
		<div class="zz-headBox clearfix">
			<div class="zz-head mc">
				<!--logo-->
				<div class="logo fl">
					
				</div>
				<!--logo end-->
				<ul class="head-rightUl fr">
					<li id="addLi"><a href="#" onclick="ShowAdd();">新建印章</a></li>
					<li id="listLi" class="select"><a href="#" onclick="ShowList()">印章列表</a></li>
				</ul>
			</div>
		</div>
		<!--header end-->  
        
    <div style="border-top:solid 1px #ccc;">
        <!--right-->
        <div  id="listDiv" style="max-width:1000px;margin:0 auto;margin-top:20px;width: 980px;text-align:left">
            <!--表格内容-->
            
                <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting"
                    OnRowDataBound="GridView1_RowDataBound" BackColor="White" BorderColor="White" 
                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3"  Width="100%">
                    <RowStyle ForeColor="#666666" BorderColor="#E7E7E7" BorderStyle="Solid" BorderWidth="1px"  />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="编号" >
                            <HeaderStyle Font-Bold="True" Font-Names="Arial, Helvetica, sans-serif" Font-Size="14px" Height="32" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="120px" />
                            <ItemStyle HorizontalAlign="left" Height="38" BorderColor="#E7E7E7" BorderStyle="Solid"
                                BorderWidth="1px" />
                        </asp:BoundField>


                        
                        <asp:ButtonField DataTextField="SealName"    HeaderText="印章名称"      >
                            <ControlStyle Font-Size="10pt" Width="200px"  />
                            <FooterStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            <HeaderStyle Font-Bold="True" Font-Names="Arial, Helvetica, sans-serif" Font-Size="14px" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="160px" />
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" BorderColor="#E7E7E7" BorderStyle="Solid"
                                BorderWidth="1px"  ForeColor="#3366CC"    />

                        </asp:ButtonField>
                                                                                         
                        
                        <asp:BoundField DataField="SealType" HeaderText="印章类型">
                            <ControlStyle Font-Size="10pt" Width="60px" />
                            <HeaderStyle Font-Bold="True" Font-Names="Arial, Helvetica, sans-serif" Font-Size="14px" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="100px" />
                            <ItemStyle BorderColor="#E7E7E7" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DeptName" HeaderText="部门名称">
                            <ControlStyle Font-Size="10pt" />
                            <HeaderStyle Font-Bold="True" Font-Names="Arial, Helvetica, sans-serif" Font-Size="14px" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="140px" />
                            <ItemStyle BorderColor="#E7E7E7" BorderStyle="Solid" BorderWidth="1px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Status" HeaderText="印章状态">
                            <ControlStyle Font-Size="10pt" />
                            <HeaderStyle Font-Bold="True" Font-Names="Arial, Helvetica, sans-serif" Font-Size="14px" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="100px" />
                            <ItemStyle BorderColor="#E7E7E7" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="SignerName" HeaderText="签章人">
                            <ControlStyle Font-Size="10pt" />
                            <HeaderStyle Font-Bold="True" Font-Names="Arial, Helvetica, sans-serif" Font-Size="14px" HorizontalAlign="left"
                                VerticalAlign="Middle" Width="120px" />
                            <ItemStyle BorderColor="#E7E7E7" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="left" />
                        </asp:BoundField>
                        <asp:CommandField CancelText="" EditText="" InsertText="" NewText="" SelectText=""
                            ShowCancelButton="False" ShowDeleteButton="True" UpdateText="" HeaderText="操作">
                            <HeaderStyle Font-Names="Arial, Helvetica, sans-serif" Font-Size="14px" HorizontalAlign="left" VerticalAlign="Middle"
                                Width="90px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#3366CC" BorderColor="#E7E7E7"
                                BorderStyle="Solid" BorderWidth="1px" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#F5F5F5" Font-Bold="True" ForeColor="#666666" />
                    <EditRowStyle BorderColor="#E7E7E7" />
                </asp:GridView>
            <div id="totalTxt" style="text-align:left;color:#666;line-height:40px;">共多少条</div>
            
        </div>


        <div id="addDiv"
					style="display: none; max-width:1000px;margin:0 auto;margin-top:20px; border: solid 1px #E7E7E7;border-radius:3px;  text-align: center; width: 980px; vertical-align: middle;">

            <!--表格内容-->
            
                <table style="margin: 50px 80px 50px 80px; height:320px;" >
                    <!-添加印章-->
                    <tr class="addtr">
                        <td colspan="2" style="vertical-align: top;width: 420px;">
                            <div class="titleAdd">印章信息</div>
                        </td>
                        <td rowspan="5" style="text-align: center; width: 420px; padding-left: 50px;">
                            <div class="frame">
                                <table style="height: 200px; width:200px; margin:10px auto;  ">
                                    <tr>
                                        <td style="text-align: center; vertical-align: middle;">
                                            <asp:Image ID="Image1" runat="server" Style="vertical-align: middle;max-width:190px;" />
                                        </td>
                                    </tr>
                                </table>
                            </div>

                            <div style="text-align:center; ">

										<asp:FileUpload ID="FileUpload1" runat="server" Width="170px" Height="24px" />
                                        &nbsp;<asp:Button ID="Button1" runat="server" Text="上传" Width="60px" Height="24px" OnClick="btnAddPic_Click"  />

									
								</div>



                        </td>
                    </tr>
                    <tr class="addtr">
                        <td class="sealAdd">
                            <span class="spanAdd">印章名称</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSealName" runat="server" CssClass="inputAdd"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="addtr">
                        <td class="sealAdd">
                            <span class="spanAdd">签&nbsp;章&nbsp;人</span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSignerName" runat="server" CssClass="inputAdd"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="addtr">
							<td class="sealAdd">
							<span class="spanAdd">部门名称</span>
							</td>
							<td>
								<asp:TextBox ID="txtSignerName333" runat="server" CssClass="inputAdd"></asp:TextBox>
							</td>
						</tr>



                    <tr class="addtr">
                        <td class="sealAdd">
                            <span class="spanAdd">印章类型</span>
                        </td>
                        <td>
                            <asp:DropDownList ID="dropSealType" runat="server"  Width="260px" Height="28px">
                                <asp:ListItem>印章</asp:ListItem>
                                <asp:ListItem>手写</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr class="addtr">
                        <td colspan="2" style="text-align: center; vertical-align: bottom; height:60px; ">
                            <input id="Reset1" class="btn2" type="reset" style="" value="重置" />
                            <asp:Button ID="btnAddSeal" class="btn" runat="server"  Text="添加印章" 
                                OnClick="btnAddSeal_Click" TabIndex="5" />&nbsp;&nbsp;&nbsp;&nbsp;
                            
                        </td>
                        <%--<td colspan="2"
								style="text-align: center; vertical-align: bottom; height:60px; ">
                            <asp:FileUpload ID="FileUpload1" runat="server"  />
                            &nbsp;<asp:Button ID="btnAddPic" runat="server" Text="上传"  OnClick="btnAddPic_Click" />
                        </td>--%>
                    </tr>
                </table>
         
        </div>


        <div  id="deleteAll" style="display: none;max-width:1000px;margin:0 auto;margin-top:20px;width: 980px;">
            <!--表格内容-->
            
                <table cellspacing="0" cellpadding="3" rules="all" border="1"
					style="background-color: White; text-align:left; border-color: #E7E7E7; border-width: 1px; border-style: solid; font-size: 14px;  width: 100%; border-collapse: collapse;">
                    <tr style="color: #666; background-color: #F5F5F5; font-weight: bold; height: 40px;">
                        <th scope="col" style="width: 100px;">
                            编号
                        </th>
                        <th scope="col" style="width: 160px;">
                            印章名称
                        </th>
                        <th scope="col" style="width: 100px;">
                            印章类型
                        </th>
                        <th scope="col" style="width: 140px;">
                            部门名称
                        </th>
                        <th scope="col" style="width: 100px;">
                            印章状态
                        </th>
                        <th scope="col" style="width: 120px;">
                            签章人
                        </th>
                        <th scope="col" style="width: 80px;">
                            操作
                        </th>
                    </tr>
                    <tr style="color: #000066; height: 32px;">
                        <td colspan="7" style="text-align: center; color: #666666">
                            无印章。
                        </td>
                    </tr>
                </table>
           
        </div>
    </div>
    <!--content end-->
    </form>



    <!-- 印章图片 -->
		<div id="sealImgDiv" class="box" style="display:none; ">
			<div style="text-align:left; float:left; width:212px; height:212px; border: 1px solid #a4c8de;background-color:white;box-shadow: 5px 5px 5px #ccc; border-radius:5px; ">
				<div style=" height:20px;color:#666;  " >
					<div id="idDiv" style="width:80px; float:left; font-size:12px; margin:3px 0 0 5px; " >
						
					</div>
					<div style="width:16px; float:right;  " >
						<a href="javascript:void(0);" onclick='document.getElementById("sealImgDiv").style.display = "none";'>x</a>
					</div>
				</div>
				<div style="position: relative;  width: 210px;height: 190px;">
					<img id="img_seal" style=" position: absolute; top:50%; left:50%; transform: translate(-50%,-50%); max-width:190px; " />
				</div>
			</div>
		</div>
		<!--content end-->




    <script type="text/javascript">
			var recordCount = document.getElementById("GridView1").rows.length - 1;
			document.getElementById("totalTxt").innerHTML = "共计 "+recordCount+" 条记录";
		</script>

</body>
</html>
