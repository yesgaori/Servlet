<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체격조건 입력</title>
</head>
<body>
	
	<h1>체격조건 입력</h1>
	<form method="get" action="/jsp/test/test02.jsp">
		<input type="text" name="personHeight"> <label>cm</label>
		<input type="text" name="weight"> <label>kg</label>
		<button type="submit">계산</button>
	</form>
	
</body>
</html>