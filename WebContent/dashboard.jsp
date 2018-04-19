<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="yikaaitu_favicon.ico">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/dashboard.css" />
<title>主页</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="content-layout">
		<div id="menu">
			<div id="one">
				<img src="images/1.png"><br>
				<a href="" id="link"></a><a
						 href="<%=request.getContextPath()%>/storeInfo.jsp" id="linka">我的门店</a>
			</div>
			<div id="two">
				<img src="images/2.png"><br>
				<a href="" id="link"></a><a
						 href="<%=request.getContextPath()%>/settlement.jsp" id="linka">结算管理</a>
			</div>
			<div id="three">
				<img src="images/3.png"><br>
				<a href="" id="link"></a><a
						 href="<%=request.getContextPath()%>/settlement.jsp" id="linka">我的订单</a>
			</div>
			<div id="four">
				<img src="images/4.png"><br>
				<a href="" id="link"></a><a
						 href="<%=request.getContextPath()%>/settlement.jsp" id="linka">我的账户</a>
			</div>
			<div id="five">
				<img src="images/5.png"><br>
				<a href="" id="link"></a><a
						 href="<%=request.getContextPath()%>/stafflist.jsp" id="linka">用户管理</a>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>