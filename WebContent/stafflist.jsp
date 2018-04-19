<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="shortcut icon" href="yikaaitu_favicon.ico">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/stafflist.css">
<link rel="stylesheet" type="text/css" href="css/page.css">
<script type="text/javascript" src="js/lib/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/stafflist.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="content-layout">
		<div class="content" style="width:800px">
			<form id="dataForm" action="queryStaff" method="get">
				<input type="button" name="del" value="批量删除"
					style="background-color: #de0914;"> <input type="text"
					name="name" placeholder="用户名"> <input type="text"
					name="phone" placeholder="联系方式">
				<div style="float: right;">
					<input type="submit" name="查询" value="查询"
						style="background-color: blue;"> <input type="button"
						name="添加用户" value="添加用户" style="background-color: #8ac55b;">
				</div>
				<table>
					<tr>
						<th><input id="all" type="checkbox" value="全选"
							onclick="check();" /></th>
						<th><strong>用户名</strong></th>
						<th><strong>店员姓名</strong></th>
						<th><strong>联系方式</strong></th>
						<th><strong>操作</strong></th>
					</tr>

					<c:forEach var="data" items="${requestScope.list}">
						<tr class="tr_0">
							<td><input name="product" type="checkbox" value="1" /></td>
							<td><a id="a">${data.userId}</a></td>
							<td><strong>${data.userName}</strong></td>
							<td>${data.numberegral}</td>
							<td><a href="delStaff?id=${data.id}" class="del"
								style="color: #DE0914">删除</a></td>
						</tr>
					</c:forEach>
				</table>
				<div class="page">
					<p>
						符合条件的记录共:<span>${totalSize}</span>条 <input id="currentPage"
							name="currentPage" type="text" value="${currentPage}" />
					</p>
					<div>
						<input id="prev" type="button" /> <span id="currentPageSpan">${currentPage}</span>/<span
							id="totalPageSpan">${totalPage}</span> <input id="next"
							type="button" />
						<div style="display: inline; float: right; margin-left: 25px">
							跳转至<input style="width: 40px" type="text" id="index" />&nbsp;&nbsp;&nbsp;页
							<input type="button" id="go" value="GO"
								style="background-color: blue; width: 40px">
						</div>

					</div>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>