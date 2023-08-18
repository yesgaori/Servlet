<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.yesgaori.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 리스트</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		ResultSet resultSet = mysqlService.select("SELECT `id`, `site-name`, `site-address` FROM `favorites` ORDER BY `id` DESC;");
		
		
		
	%>


	<div id="wrap" class="container">
		<div>
			<table class="table text-center">
				<thead>
					<tr>
						<th>사이트</th>
						<th>사이트 주소</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<% while(resultSet.next()) { %>
					<tr>
						<td> <%= resultSet.getString("site-name") %> </td>
						<td><a target="_blank" href="<%= resultSet.getString("site-address") %>"> <%= resultSet.getString("site-address") %> </a></td>
						<td><a href="/db/site-delete?result=<%= resultSet.getInt("id") %>" class="btn btn-danger">삭제</a></td>
					</tr>
					<% } %>
					
					
				</tbody>
			</table>
		</div>
		<a href="/database/test/test02-input.jsp" class="btn btn-success">즐겨찾기 추가</a>
	</div>
	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>