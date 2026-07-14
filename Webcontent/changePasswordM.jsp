<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ChangePasswordM</title>
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
<script language=javascript>
function checkReg() {
	if(document.reg.password2.value == "") {
		alert("请输入第二次确认的密码!");
		document.reg.password2.focus();
	} else if(document.reg.password.value != document.reg.password2.value) {
		alert("两次输入的密码不符!");
		document.reg.password.focus();
	}
}
</script>
</script>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/style4.css" />
</head>
<body background="images/1.jpg">
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
								<li><a href="manager_index.html"><span data-hover="Home">Home</span></a></li>
								<li><a href="changePasswordM.jsp"><span data-hover="Change Password">ChangePassword</span></a></li>
								<li><a href="login.html"><span data-hover="Exit">Exit</span></a></li>
							</ul>
							<div class="clearfix"></div>
						</div><!-- /.navbar-collapse -->
						
						<div class="clearfix"></div>
			</div><!-- /container-fluid -->
</nav>
<marquee behavior="scroll" scrollamount="3"><h2>ChangePasswordM</h2></marquee>
<form name="reg" method="post"  action="/BookManagement/ChangePassSServlet">
	<table cellpadding="3" cellspacing="1" align="center"  >
		<tr>
			<td valign="middle" colspan="2" align="center" height="25" >
			<font color="#ffffff"><b>修改用户密码</b></font></td>
		</tr>
		<tr>
			<td width="40%" class="tablebody1"><b>用户帐号</b></td>
			<td width="60%" class="tablebody1">
			<input value="${sessionScope.user.name }"  maxLength="8" size="32" name="userid" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			<font color="#FF0000">*</font></td>
		</tr>
		<tr><td><br></td></tr>
		<tr>
			<td width="40%" class="tablebody1"><b>密码（至多8位）</b>：
			</td>
			<td width="60%" class="tablebody1">
			<input value="${sessionScope.user.password }" type="text" maxLength="8" size="32" name="password" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			<font color="#FF0000">*</font></td>
		</tr>
		<tr><td><br></td></tr>
		<tr>
			<td width="40%" class="tablebody1"><b>请再输入一遍</b>：
			</td>
			<td class="tablebody1">
			<input type="text" maxLength="8" size="32" name="password2" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			<font color="#FF0000">*</font></td>
		</tr>
		<tr><td><br></td></tr>
		<tr>
			<td class="tablebody2" valign="middle" colspan="2" align="center">
			<input type="submit" value="确定" onclick="javascript:checkReg()">&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value="清 除"></td>
		</tr>
	</table>
</form>
</body>
</html>