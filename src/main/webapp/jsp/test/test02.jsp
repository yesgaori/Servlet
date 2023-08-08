<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
</head>
<body>

	<%	
		String personHeight = request.getParameter("personHeight");
		String weight = request.getParameter("weight");
		
		int intWeight = Integer.parseInt(weight);
		int intPersonHeight = Integer.parseInt(personHeight);
		double bmi = intWeight / (((double)intPersonHeight / 100.0)*((double)intPersonHeight /100.0));
		
		String result = "empty";
		if(bmi <= 20.0) {
			result = "저체중";
		} else if (bmi <= 25.0) {
			result = "정상";
		} else if (bmi <= 30.0) {
			result = "과체중";
		} else if (bmi >= 31.0) {
			result = "비만";
		}
		
	%>
	
	<h2>BMI 측정결과</h2>
	
	<h1>당신은 <%=result %> 입니다.</h1>
	
	<h4>BMI 수치 : <%=bmi %></h4>
	
</body>
</html>