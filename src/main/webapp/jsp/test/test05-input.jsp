<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	
	<h1>길이 변환</h1>
	<form method="post" action="/jsp/test/test05.jsp">
		<input type="text" name="length"><label>cm</label>
		<br>
		<lable>인치<input type="checkbox" name="types" value="인치"></lable>
		<label>야드<input type="checkbox" name="types" value="야드"></label>
		<label>피트<input type="checkbox" name="types" value="피트"></label>
		<label>미터<input type="checkbox" name="types" value="미터"></label>
		<br>
		<button type="submit">변환</button>
	
	
	</form>
	
	
	
</body>
</html>