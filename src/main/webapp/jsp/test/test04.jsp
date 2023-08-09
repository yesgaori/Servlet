<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String number1 = request.getParameter("number1");
		String number2 = request.getParameter("number2");
		String calculate = request.getParameter("calculate");
		
		double result = 0;
		
		int first = Integer.parseInt(number1);
		int second = Integer.parseInt(number2);
		
		if(calculate.equals("plus")) {
			result = (double)(first+second);
			calculate="+";
		} else if(calculate.equals("minus")) {
			result = (double)(first-second);
			calculate="-";
		} else if(calculate.equals("multiply")) {
			result = (double)(first*second);
			calculate="x";
		} else if(calculate.equals("division")) {
			result = (double)(first/second);
			calculate="/";
		}	
	%>
	<h1>계산 결과</h1>
	<h1><%= number1 %> <%= calculate %> <%= number2 %> = <%= result %></h1>
	
	
</body>
</html>