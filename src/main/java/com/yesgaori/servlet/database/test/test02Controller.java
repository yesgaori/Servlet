package com.yesgaori.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yesgaori.servlet.common.MysqlService;
@WebServlet("/db/site-insert")
public class test02Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `favorites`\r\n"
				+ "(`site-name`, `site-address`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + address + "');";
		
		int count = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/test/test02.jsp");
		
	}
	
	
}
