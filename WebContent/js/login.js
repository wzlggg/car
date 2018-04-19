$(document).ready(function(){
	$("#phone+input").focus(function(){
		var txt_value =  $(this).val();   // 得到当前文本框的值
     });
	$("#phone+input").blur(function(){
		var txt_value =  $(this).val();   // 得到当前文本框的值
     });

	$("#closea").click(function(){
		var txt_value =  $("#phone+input").val();  
		 $("#phone+input").val(""); 
 	});
 	$("#closeb").click(function(){
		var txt_value =  $("#lock+input").val();  
		 $("#lock+input").val(""); 
 	});

});