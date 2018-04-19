<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cjd</title>
</head>
<body>
<%
     String []a={"李文","张三","李四"};

     double []b=new double [3];
     b[0]=60;
     b[1]=70;
     b[2]=80;		 
     for(int i=0;i<=2;i++)
     {
    	 out.print(a[i]+":"+b[i]+"分"+"<br/>");
     }

     %>
</body>
</html>