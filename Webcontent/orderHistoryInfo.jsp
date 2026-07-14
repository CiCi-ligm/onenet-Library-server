<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.bean.Order,com.bean.User,com.bean.Line,com.service.ILineService,com.service.imp.LineServiceImp" %>
<%@page import="java.util.List,java.util.ArrayList" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>OrderHistoryInfo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Stunning Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<LINK href="css/main.css" rel=stylesheet>
<script language = "JavaScript" src = "js/main.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--flexslider-css-->
<!--bootstrap-->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<!--coustom css-->
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<!--fonts-->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,800italic,800,700italic,700,600,600italic' rel='stylesheet' type='text/css'>
<!--/fonts-->
<!--script-->
<script src="js/jquery.min.js"> </script>
	<!-- js -->
		 <script src="js/bootstrap.js"></script>
		<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
<!--/script-->
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/style4.css" />

<style type="text/css">
#left {
 float: left;
 height: 400px;
 width: 225px;
}
#right {
 float: left;
 height: 400px;
 width: 1000px;
}
</style>
</head>
<body>
<div class="header" id="home">
			<nav class="navbar navbar-default">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"><h1>BookManagement</h1><br /><span>Reading Online</span></a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-right margin-top cl-effect-2">
								<li><a href="student_index.html"><span data-hover="Home">Home</span></a></li>
								<li><a href="order.jsp"><span data-hover="Order">Order</span></a></li>
								<li><a href="littleCar.jsp"><span data-hover="LittleCar">LittleCar</span></a></li>
								<li><a href="history.jsp"><span data-hover="History">History</span></a></li>
								<li><a href="changePasswordS.jsp"><span data-hover="ChangePassword">ChangePassword</span></a></li>
								<li><a href="resetInformation.jsp"><span data-hover="ResetInformation">ResetInformation</span></a></li>
							</ul>
							<div class="clearfix"></div>
						</div><!-- /.navbar-collapse -->
						
						<div class="clearfix"></div>
			</div><!-- /container-fluid -->
</nav>
<TABLE height=29 cellSpacing=0 cellPadding=0 width=1100 align=center  border=0 >
 			 <TR align="right">
   				 <TD  width=5000>
			    	<DIV style="PADDING-BOTTOM: 6px; COLOR:#71C6C1">
			    	当前时间为：
			    	<SPAN id=time></SPAN>
			    	<SCRIPT>setInterval("time.innerHTML=new Date().getHours()+':'+new Date().getMinutes()+':'+new Date().getSeconds()",1000);</SCRIPT></font>
			    	</DIV>
				</TD>
			  </TR>
			</TABLE>
<div class="container">
<div class="about-top heading">
	<h4>Welcome to Cy_BM for OrderHistoryInformation</h4>
</div>
</div>
<br>

<div id="left">
	<img alt="" src="images/pp1.png"></img>
</div>
<div id="right">
	<table width="900" cellpadding=3 cellspacing=1 align=center class=tableborder1 border="1px" bordercolor="grey">
		<tr>
			<td valign=middle align=center height=35 background="images/bg2.gif" width=""><font color="#ffffff"><b>序号</b></font></td>
			<td valign=middle align=center height=35 background="images/bg2.gif" width=""><font color="#ffffff"><b>书目名称</b></font></td>
			<td valign=middle align=center height=35 background="images/bg2.gif" width=""><font color="#ffffff"><b>出版社</b></font></td>
			<td valign=middle align=center height=35 background="images/bg2.gif" width=""><font color="#ffffff"><b>出版时间</b></font></td>
			<td valign=middle align=center height=35 background="images/bg2.gif" width=""><font color="#ffffff"><b>借阅时间</b></font></td>
			<td valign=middle align=center height=35 background="images/bg2.gif" width=""><font color="#ffffff"><b>操作</b></font></td>
		</tr>
		<%
			long orderId = Long.parseLong(request.getParameter("orderId"));
			ILineService lineService = new LineServiceImp();
			List<Line> lineList = lineService.findAllLineByOID(orderId);
			request.setAttribute("linesPage", lineList);
			
		%> 
		<c:forEach items="${requestScope.linesPage }" var="line" varStatus="vs">
			<tr>
			<td height=25 bgcolor="#E4F3FF" valign=middle align=center width="">${vs.index+1 }</td>
			<td height=25 valign=middle width="">&nbsp;&nbsp;<a href="productDetail.jsp?productid=4">${line.book.bookName }</a></td>
			<td height=25 bgcolor="#E4F3FF" valign=middle align=center width="">${line.book.publishHouse }</td>
			<td height=25 valign=middle align=center width="">${line.book.publishTime}</td>
			<td height=25 bgcolor="#E4F3FF" valign=middle align=center width="">${line.order.orderDate.month+1}月${line.order.orderDate.date}日借阅</td>
			<td height=25 valign=middle align=center width="">
			<input type="button" value="续借" onclick="javascript:window.location='/BookManagement/XujieServlet?bookId=${line.book.id}&orderId=${line.order.id }';"></td>
		</tr>
		</c:forEach>
		
	</table>
</div>
</body>
</html>