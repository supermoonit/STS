<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat"%>
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
body form label {
	margin-right: 20px;
}

input.form-control {
	width: 200px;
}

select.form-control {
	width: 200px;
}
</style>
</head>
<body>
	<%
String r1 = request.getParameter("radio1");
String one_checked = "one".equals(r1) ? "checked" : "";
String two_checked = "two".equals(r1) ? "checked" : "";
String three_checked = "three".equals(r1) ? "checked" : "";
if(r1==null) r1="";

String n1 = request.getParameter("num");
if(n1==null) n1="";


String s1 = request.getParameter("select1");
if(s1==null) s1="";

if(s1.equals("one")){
	one_checked = "checked";
	n1 = "one";
}else if(s1.equals("two")){
	two_checked = "checked";
	n1 = "two";
}else if(s1.equals("three")){
	three_checked = "checked";
	n1 = "three";
}

%>
	<div class="container">
		<form method="get">
			<p></p>
			<label>select1:</label>
			<div class="form-group">
				<select name="select1" class="form-control">
					<option value="one" <%= s1.equals("one")? "selected" : "" %>>one</option>
					<option value="two" <%= s1.equals("two")? "selected" : "" %>>two</option>
					<option value="three" <%= s1.equals("three")? "selected" : "" %>>three</option>
				</select>
			</div>

			<div class="form-group">
				<label><input type="radio" name="radio1" value="one"
					<%= one_checked %> />one <input type="radio" name="radio1"
					value="two" <%= two_checked %> />two <input type="radio"
					name="radio1" value="three" <%= three_checked %> />three</label>
			</div>

			<div class="form-group">
				<input type="text" name="num" class="form-control" value=<%=n1%>>
			</div>

			<div class="form-group">
				<button type="submit" class="btn btn-primary">확인</button>
			</div>
		</form>
	</div>
</body>
</html>