package com.yesgaori.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out = response.getWriter();
		
		String first = request.getParameter("first");
		String second = request.getParameter("second");
		
		int result1 = Integer.parseInt(first);
		int result2 = Integer.parseInt(second);
		

		

		
		out.println("{\"addtion\":" + (result1 + result2)
				+ ",\"subtraction\":" + (result1 - result2)
				+ ",\"multiplication\":" + (result1 * result2) 
				+ ",\"division\":" + (result1 / result2) + "}");
		
		
		
		
	}
	
	
	
}
