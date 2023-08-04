package com.yesgaori.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String amount = request.getParameter("amount");
		
		out.println("<html><head><title>주문하기</title></head><body>");
		
		String seoul = "서울시";
		String nope = "신한카드";
		
		if(address.substring(0,3).equals(seoul) && !card.contains(nope)) {
			out.println("<h3>" + address +"로 배달 준비중</h3><hr>");
			out.println("<h3>결제금액 : " + amount + "</h3>");
			out.println("</body></html>");

		} else if(card.equals(nope)) {
			out.println("<h3>결제불가한 카드입니다</h3>");
			out.println("</body></html>");
			
		} else {
			out.println("<h3>배달 불가 지역입니다</h3><hr>");
			out.println("</body></html>");
		} 
		
		
		

		

		
	}
	
	
}
