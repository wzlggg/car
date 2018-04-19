<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/store.css">
<script type="text/javascript" src="js/lib/jquery/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/myStore.js"></script>
<title>我的门店</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="content-layout">
		<div class="content">
			<table class="table" cellspacing="10">
				<tr>
					<td class="first">门店名</td>
					<td class="second">${data.storeName}</td>
				</tr>
				<tr>
					<td class="first">门店位置</td>
					<td class="second">${data.storeAddress}</td>
				</tr>
				<tr>
					<td class="first">店主姓名</td>
					<td class="second">${data.storeQwnerName}</td>
				</tr>
				<tr>
					<td class="first">店主手机号</td>
					<td class="second">${data.storePhone}</td>
				</tr>
				<tr>
					<td class="first">备用手机号</td>
					<td class="second">${data.storeSecondtel}</td>
				</tr>
				<tr>
					<td class="first">身份证号</td>
					<td class="second">${data.idCard}</td>
				</tr>
				<tr>
					<td class="first">门店服务项目</td>
					<td class="second">
					<c:choose>
						<c:when test="${data.serviceType ==1}">		
		   					服务站
						 </c:when>

						<c:when test="${data.serviceType == 2}">		
		   					综合修理
						</c:when>
						<c:when test="${data.serviceType == 3}">		
		   					快修
						</c:when>
						<c:when test="${data.serviceType ==4}">		
		   					拖车
						</c:when>
					</c:choose>
					</td>
				</tr>

				<tr>
					<td class="first">身份证照片</td>
					<td class="second"><img width="45px" height="26px"
						src="${data.idCardImag}" /></td>
				</tr>

				<tr>
					<td class="first">门店营业执照</td>
					<td class="second"><img width="45px" height="26px"
						src="${data.businessLicenseImg}" /></td>
				</tr>
				<tr>
					<td></td>
					<td class="first"><span>*</span>如需修改手机号等信息，需联系客服</td>
				</tr>
			</table>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>