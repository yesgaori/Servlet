<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- 1. 점수들의 평균 구하기
	스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요.--%>
	<% int[] scores = {80, 90, 100, 95, 80}; %>
	<% 
		int sum = 0;
		for(int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double result = sum / scores.length;
	%>
	<h3>평균 점수는 <%= result %>점 입니다.</h3>
	<%-- 2. 채점 결과
	아래 채점표로 시험점수가 몇점인지 구하세요.--%>
	<% List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"}); %>
	<% 		
		int result2 = 0;
		for(int i = 0; i < scoreList.size(); i++) {
			if(scoreList.get(i).equals("O")) {
				result2 += 10;
			}		
		}
	%>
	<h3>점수 : <%= result2 %></h3>
	
	<%-- 3. 1부터 n까지의 합계를 구하는 함수
	jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요.
	만든 함수를 이용해서 50까지의 합의 결과를 출력하세요.--%>
	
	<%! 
		public int calculateSum(int number) {
			int result = 0;
			for(int i = 1; i <= number; i++) {
				result += i;
			}
			return result;
		}
	%>
	<h3>1부터 50까지의 합의 결과 : <%= calculateSum(50) %></h3>
	
	<%-- 4. 나이 구하기
	주어진 생년월일을 가진 사람의 나이를 구하세요.--%>
	<% String birthDay = "20010820"; %>
	
	<%!
		public int age(String birthDay) {
			int year = 2023;
			String birth = birthDay.substring(0,4);
			int age = year - Integer.parseInt(birth) + 1;
			return age;
		}
	%>
	<h3>나이 : <%= age(birthDay) %></h3>
	
</body>
</html>