<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
</head>
<body>
	
	<%
		String length = request.getParameter("length");
		String[] types = request.getParameterValues("types"); 
		
		String resultString = "";
		int cm = Integer.parseInt(length);
		double result1 = (double)cm;
		double result2 = (double)cm;
		double result3 = (double)cm;
		double result4 = (double)cm;
		for(int i = 0; i < types.length; i++) {
			if(types[i].contains("인치")) {
				result1 = result1 / 2.54;
				resultString += "<div>" + result1 + " in </div>";
			} else if(types[i].contains("야드")) {
				result2 = result2 / 91.44;
				resultString += "<div>" + result2 + " yd </div>";
			} else if(types[i].contains("피트")) {
				result3 = result3 / 30.48;
				resultString += "<div>" + result3 + " ft </div>";
			} else if(types[i].contains("미터")) {
				result4 = result4 / 100;
				resultString += "<div>" + result4 + " m </div>";
			}
		}	
	%>
	
	<h1>변환 결과</h1>
	<h1><%= length %>cm</h1>
	<hr>
	<h1>
		<%=resultString %>
	</h1>
	
	
	
	
</body>
</html>