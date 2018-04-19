<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>门店pc_登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="yikaaitu_favicon.ico">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<script type="text/javascript" src="js/lib/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/login.js"></script>
</head>
<body>
	<div style="width: 100%;">
		<div id="login-header">
			<div id="logo"></div>
		</div>
		<div id="login-content">
			<div style="width:1000px;margin:0px auto;">
				<div id="left"></div>
				<div id="right">
					<p>账号登录</p>
					<form action="login" method="post">
						<div class="in">
							<div id="phone"></div>
							<input type="text" name="phone" placeholder="手机号" value="18251893790">
							<div class="close" id="closea"></div>
							<!-- <input type="button" name="a" class ="close" > -->
						</div>
						<div class="in">
							<div id="lock"></div>
							<input type="password" name="password" placeholder="密 码" value="111">
							<div class="close" id="closeb"></div>
							<!-- <input type="button" name="a" class ="close" > -->
						</div>
						<a href="" id="link">忘记密码?</a><a
						 href="<%=request.getContextPath()%>/register.jsp" id="linka">网点注册&gt;&gt;</a>
						<div class="in">
							<input type="submit" name="button" value="立即登录"
								style="margin: 0px 50px;">
						</div>
					</form>
				</div>
			</div>
		</div>
		<div id="login-footer">
			<br> <br> <br> <br>
			<p>Copyright©2016 江苏易卡之家网络科技有限公司 &nbsp;版本所有</p>
			<p>技术支持：江苏苏微软件技术有限公司</p>
		</div>
	</div>
</body>
</html>