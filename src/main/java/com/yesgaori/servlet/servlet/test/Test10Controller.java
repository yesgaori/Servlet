package com.yesgaori.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test10Controller extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		// doPost 메소드 바깥쪽에 위치
		private final Map<String, String> userMap =  new HashMap<String, String>() {
		    {
		        put("id", "hagulu");
		        put("password", "asdf");
		        put("name", "김인규");
		    }
		};
		
		
	}
	
	
	
	
	
	
}
