<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산</title>
</head>
<body>
	
	<h1>사칙연산</h1>
	<form method="post" action="/jsp/test/test04.jsp">
	<input type="text" name="number1">
	<select name="calculate">
		<option value="plus">+</option>
		<option value="minus">-</option>
		<option value="multiply">x</option>
		<option value="division">/</option>
	</select>
	<input type="text" name="number2">
	<button type="submit">계산</button>
	
	
	</form>
	
	
</body>
</html>