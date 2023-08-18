package com.yesgaori.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yesgaori.servlet.common.MysqlService;
@WebServlet("/db/site-delete")
public class test02DeleteController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String result = request.getParameter("result");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		int intResult = Integer.parseInt(result);
		String query = "DELETE FROM `favorites` WHERE `id` = " + intResult +";";
		
		int count = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/test/test02.jsp");
		
	}
	
}
