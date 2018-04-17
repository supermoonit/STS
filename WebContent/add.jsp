<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	font-family: 굴림체;
}

input.form-control {
	width: 200px;
}
</style>
</head>
<body>
<div class="container">
<form action = "check.jsp">
<% 
request.setCharacterEncoding("UTF-8");
String product = request.getParameter("object");
ArrayList<Object> list = (ArrayList)session.getAttribute("productList");

if(list==null){
	list = new ArrayList<Object>();
	
}
list.add(product);
session.setAttribute("productList",list);
%>


<script>
alert("<%=product%>이(가) 추가되었습니다!!");
history.go(-1);
</script>

</form>
</div>
</body>
</html>