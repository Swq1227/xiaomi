package cn.coding52.CodingMart.controller;

import java.io.IOException;



import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.coding52.CodingMart.dao.daoimpl.Types_managerDaoImpl;


@WebServlet(name="add_typeServlet",urlPatterns="/add_typeServlet")
public class add_typeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String t_name=request.getParameter("name");
//		System.out.println(t_name);
		String res=new Types_managerDaoImpl().addTypes(t_name);
		PrintWriter pw = response.getWriter();
//		System.out.println("_____"+res);
		pw.print(res);
		pw.close();
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request, response);
	}

}
