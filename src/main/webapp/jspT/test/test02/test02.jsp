<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악이 필요할때 Melong</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
	

	<%@ include file="music-data.jsp" %>

	<div id="wrap">
		<jsp:include page="header.jsp"/>
		<jsp:include page="nav.jsp"/>
		<section class="main-contents">
			<div class="singer-info border border-success">
				<div class="d-flex mt-2 p-3">
					<div>
						<img width="150px;" src="<%= artistInfo.get("photo") %>">
					</div>
					<div class="ml-5">
						<h1><%= artistInfo.get("name") %></h1>
						<div class="mt-2 small"><%= artistInfo.get("agency") %></div>
						<div class="small"><%= artistInfo.get("debute") %> 데뷔</div>
					</div>
				</div>
			</div>
			<div class="content">
			<h2>곡 목록</h2>
			<table class="table text-center">
				<thead>
					<tr>
						<th>no</th>
						<th>제목</th>
						<th>앨범</th>
					</tr>
				</thead>
				<tbody>
					<% for(Map<String, Object> content:musicList) { %>
					<tr>
						<td><%= content.get("id") %></td>
						<td><a href="/jspT/test/test02/test02-second.jsp?selectMusic=<%= content.get("id") %>"><%= content.get("title") %></a></td>
						<td><%= content.get("album") %></td>
					</tr>
					<% } %>
				</tbody>
			</table>
			</div>
		</section>
		<jsp:include page="footer.jsp"/>
		
	
	
	
	
	</div>
	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>