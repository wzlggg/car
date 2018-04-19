<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/lib/jquery/jquery-1.8.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/stafflist.css"/>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

#content {
	background: url(images/index_bg.png) no-repeat;
	margin: 0 auto;
	height: 791px;
	padding-top: 81px;
}

.c1 {
	width: 963px;
	height: 706px;
	background: white;
	margin-left: 333px;
}

#content .shuru {
	padding-top: 33px;
	padding-left: 43px;
	vertical-align: middle;
}

.jsdh {
	margin-left: 36px;
	margin-right: 19px;
}

.cx {
	margin-left: 105px;
	background: url(images/menu-3.3.png) no-repeat;
	width: 88px;
	height: 29px;
	margin-top: 5px;
	line-height: 29px;
}

#content .t1 {
	padding-top: 33px;
	padding-left: 43px;
}

#content .tab1 tr {
	height: 40px;
}

#content .tab1 tr .td1 {
	width: 90px;
}

#content .fenye {
	padding-top: 33px;
	padding-left: 43px;
	margin-top: 38px;
}

#content .fenye .s2 {
	margin-left: 300px;
}
.page #prev{
	background: url("images/prev.png") no-repeat;
}
.page #next{
	background: url("images/next.png") no-repeat;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$(".del").live("click", function() {
		$(this).parent().parent().remove();
	});

	$("#prev").click(function() {
		var currentPage = parseInt($("#currentPage").val());
		if (currentPage <= 1) {
			alert("已经是第一页，不能后退");
			return;
		}
		currentPage = currentPage - 1;
		console.info(currentPage);
		$("#currentPage").val(currentPage);
		$("#dataForm").submit();
		
	});

	$("#next").click(function() {
		var totalPage = parseInt($("#totalPageSpan").text());
		var currentPage = parseInt($("#currentPage").val());
		if (currentPage >= totalPage) {
			alert("已经是最后一页，不能前进");
			return;
		}
		currentPage = currentPage + 1;
		console.info(currentPage);
		$("#currentPage").val(currentPage);
		$("#dataForm").submit();
		
	});

	$("#go").click(function() {
		var text = $("#index").val();
		if ("" == text || null == text) {
			alert("请输入页码");
			return;
		}
		var totalPage = parseInt($("#totalPageSpan").text());
		var inputPage = parseInt(text);
		if (inputPage > totalPage) {
			alert("输入页码大于最大值");
			return;
		}
		if (inputPage < 1) {
			alert("输入页码小于最小值");
			return;
		}
		$("#currentPage").val(inputPage);
		$("#dataForm").submit();
	});
	
	$("#search").click(function() {
		$("#currentPage").val(1);
		$("#dataForm").submit();
	});
});
function check() {
	var oInput = document.getElementsByName("product");
	for (var i = 0; i < oInput.length; i++) {
		oInput[i].checked = document.getElementById("all").checked;
	}
}
	
</script>
</head>
<body>
	<%@ include file="header.jsp"%>
	
	<div id="content">
		<div class="c1">
			<form action="SettlementManage" method="get" name="pageform" id="dataForm">
				<div class="shuru">
					<select name="js_s" style="width: 88px; height: 20px;">
						<option value="2">已结算</option>
					</select> <input type="text" class="jsdh" id="jsdh" name="jsdh"
						placeholder="订单号" style="width: 88px; height: 15px;" /> <input
						type="text" id="fkr" name="fkr" placeholder="付款人"
						style="width: 88px; height: 15px;" /> <input type="button"
						name="" id="search" value="" class="cx" />
						
				</div>
				<div class="t1">
					<table border="1" cellspacing="0" cellpadding="0"
						style="text-align: center; width: 900px;" class="tab1">
						<tr style="background-color: #F0F0F0;">
							<td class="td1"><input type="checkbox" name="all" id="all"
								value="" onclick="check();" /></td>
							<td>结算单号</td>
							<td>服务网点</td>
							<td>手机号码</td>
							<td>付款人</td>
							<td>付款时间</td>
							<td>付款金额</td>
							<td>平台佣金</td>
							<td>实际到账</td>
							<td>状态</td>
							<td>操作</td>
						</tr>
					
							<c:forEach var="data" items="${settleparma}">							
							<tr>
								<td class="td1"><input type="checkbox" name="product"
									id="product" value="" /></td>
								<td>${data.order_sn }</td>
								<td>${data.store_name }</td>
								<td>${data.phone}</td>
								<td>${data.user_name}</td>
								<td>${data.pay_time}</td>
								<td>￥${data.driver_pay}</td>
								<td>￥${data.commission}</td>
								<td>￥${data.driver_pay-data.commission }</td>
								<td><c:choose>
										<c:when test="${data.so==999}">已结算</c:when>
										<c:otherwise>显示错误</c:otherwise>
									</c:choose></td>
								<td><c:choose>
										<c:when test="${data.ss==2}">已评价</c:when>
										<c:otherwise>显示错误</c:otherwise>
									</c:choose></td>
							</tr>
						</c:forEach>
					
						
						
					</table>
				</div>
			
			
			
			<div class="page">
				<p>
					符合条件的记录共:
					<span>${rownum}</span>条 
					<input id="currentPage" name="currentPage" type="text" value="${cur_page}" hidden="hidden" />
				</p>
				<div>
					<input id="prev" type="button" /> 
					<span id="currentPageSpan">${cur_page}</span>/
					<span id="totalPageSpan">${pagenum}</span> 
					<input id="next" type="button" />
					<div style="display: inline; float: right; margin-left: 25px">
						跳转至
						<input style="width: 40px" type="text" id="index" />&nbsp;&nbsp;&nbsp;页
						<input type="button" id="go" value="GO" style="background-color: blue; width: 40px">
					</div>
				</div>
			</div>
			</form>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>