package cn.coding52.CodingMart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.coding52.CodingMart.dao.daoimpl.admin_loginDaoImpl;

@WebServlet(name="admin_loginServelt",urlPatterns="/admin_loginServelt")

public class admin_loginServelt extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name=request.getParameter("admin");
		String password=request.getParameter("psw");
		String res=new admin_loginDaoImpl().login(name, password);
		System.out.println(name+password);
//		HttpSession session = request.getSession();
//        session.setAttribute("name",name);
//        response.sendRedirect("../admin_manager_main_html");
		PrintWriter pw = response.getWriter();
		System.out.println(res);
		pw.print(res);
		pw.close();
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
