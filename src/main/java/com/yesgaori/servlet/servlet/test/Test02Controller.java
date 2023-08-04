package com.yesgaori.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
//		시간 출력
//		현재의 시간을 아래와 같은 형태로 출력하세요.
//		web.xml URL Mapping 후 servlet을 이용해서 출력하세요.
//		Content Type은 text/plain으로 설정하세요.
//		24시간 표현법으로 출력하세요.
//		출력 예시
//
//		현재 시간은 14시 52분 43초 입니다.
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");
		String TimeString = formatter.format(now);
		
		out.println("현재 시간은 " + TimeString + " 입니다.");

		
	}
	
}
