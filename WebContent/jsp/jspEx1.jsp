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
	<div class="container">
		<form action="jspEx1.jsp">
			<% 
	String s1 = request.getParameter("btn"); 
    if (s1 == null) s1 = ""; 
    String s2 = request.getParameter("num");
    int num = (s2 == null) ? 0 : Integer.parseInt(s2);
 
    if(s1.equals("++")) ++num;
    	else if(s1.equals("--")) --num;
	%>
			<p></p>
			<label>number:</label>
			<div class="form-group">

				<input type="text" name="num" class="form-control" value=<%=num%>>

			</div>

			<div class="form-group">
				<input type="submit" class="btn btn-default" name="btn" value="++">
				<input type="submit" class="btn btn-default" name="btn" value="--">
			</div>


		</form>
	</div>
</body>
</html>
