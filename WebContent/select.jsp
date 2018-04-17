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
String o = ""; 
if (request.getMethod().equals("POST")) {            
    o= request.getParameter("object");
}
%>
	<div class="container">
		<form action="add.jsp">
		<%
		request.setCharacterEncoding("UTF-8");
		String s = (String)session.getAttribute("userid");
		%>
  			<hr>
			<h1><%=s%>님 환영합니다!</h1>
			<hr>
			<div class="form-group">
				<label>상품선택</label>
			    <select name="object" class="form-control">
					<option value="치킨">치킨</option>
					<option value="피자">피자</option>
					<option value="햄버거">햄버거</option>
					<option value="갈비">갈비</option>
					<option value="곱창전골">곱창전골</option>
				</select>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary">추가</button>
			</div>
		</form>
		
		<div class="form-group">
				<button type="submit" class="btn btn-primary" Onclick="location.href='check.jsp'">장바구니</button>
			</div>
	
	</div>
</body>
</html>