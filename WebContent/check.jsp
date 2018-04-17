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
		<%
		request.setCharacterEncoding("UTF-8");
		ArrayList<Object> list1 = (ArrayList<Object>)session.getAttribute("productList");
		%>
  			<hr>
			<h1>장바구니 확인</h1>
			<hr>
		<%
		if(list1==null){
			out.println("선택한 상품이 없습니다.");
		}else{
			for(Object product:list1){
				out.println(product+"<BR>");
			}
		}
		%>
</body>
</html>