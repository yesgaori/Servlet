<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴 검색</title>
</head>
<body>
	<h1>메뉴 검색</h1>
	<form mrthod="get" action="/jsp/test/test07.jsp">
		<input type="text" name="search">
		<label><input type="checkbox" name="option">4점이하 제외</label><br>
		<button type=submit>검색</button>
		
	</form>
	
</body>
</html>