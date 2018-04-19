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
		$("#currentPage").val(currentPage);
		$("#dataForm").submit();
		console.info(currentPage);
	});

	$("#next").click(function() {
		var totalPage = parseInt($("#totalPageSpan").text());
		var currentPage = parseInt($("#currentPage").val());
		if (currentPage >= totalPage) {
			alert("已经是最后一页，不能前进");
			return;
		}
		currentPage = currentPage + 1;
		$("#currentPage").val(currentPage);
		$("#dataForm").submit();
		console.info(currentPage);
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
});
function check() {
	var oInput = document.getElementsByName("product");
	for (var i = 0; i < oInput.length; i++) {
		oInput[i].checked = document.getElementById("all").checked;
	}
}