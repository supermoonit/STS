<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.SimpleDateFormat"%>

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
	<form action="jspTest1.jsp" method="post">
		<% 
	    String param1 = request.getParameter("param1"); 
	    String param2 = request.getParameter("param2"); 
	    if (param1 == null) param1 = "world"; 
	    if (param2 == null) param2 = "hello";
		%>
		<div class="container">
			<p></p>
			<div class="form-group">
				<label>text1:</label> <input type="text" name="param1"
					class="form-control" value=<%=param2%> />
			</div>

			<div class="form-group">
				<label>text2:</label> <input type="text" name="param2"
					class="form-control" value=<%=param1%>>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary" name="cmd" value="확인">
			</div>
		</div>
	</form>
</body>
</html>