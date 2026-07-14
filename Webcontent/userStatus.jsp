<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>UserStatus</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Stunning Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
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
#down {
 float: left;
 height: 87px;
 width: 1049px;
}
.fixed_div{
	position:fixed;
	margin-top: 189px;
	
}
</style>

</head>

<body background="images/backgroud2.png">
<table><tr><td><br></td></tr></table>
<div class="about-top heading">
	<h4>&nbsp;&nbsp;&nbsp;&nbsp;The Cy_BM of Taiyuan University of Technology</h4>
</div>
<br><br>
<table width="800"  cellpadding=3 cellspacing=1 align=center class=tableborder1 border="1px" bordercolor="grey">
		<tr>
			<td valign=middle align=center height=35 background="images/bg2.gif" width=""><font color="#ffffff"><b>序号</b></font></td>
			<td valign=middle align=center height=35 background="images/bg2.gif" width=""><font color="#ffffff"><b>用户姓名</b></font></td>
			<td valign=middle align=center height=35 background="images/bg2.gif" width=""><font color="#ffffff"><b>状态</b></font></td>
			<td valign=middle align=center height=35 background="images/bg2.gif" width=""><font color="#ffffff"><b>操作</b></font></td>
		</tr>
		<c:forEach items="${sessionScope.usersMap }" var="user" varStatus="vs">
			<tr>
			<td height=25 bgcolor="#E4F3FF" valign=middle align=center width="">${vs.index+1 }</td>
			<td height=25 valign=middle width="" align=center>&nbsp;&nbsp;${user.value.name }</td>
			<td height=25 bgcolor="#E4F3FF" valign=middle align=center width="">${user.value.status }</td>
			<td height=25 valign=middle align=center width="">
			<!-- <input type="button" value="明细" onclick="javascript:window.location='/estore/user/orderinfo.jsp?orderid=${order.id}';"></td> -->
			<input type="button" value="明细" onclick="javascript:window.location='userInfo.jsp?userId=${user.value.id}';"></td>
			
			</tr>
		</c:forEach>
		
</table>
<div id="down" class="fixed_div" style="background-image: url('images/backgroud.png');">
</div>
</body>
</html>