package cn.coding52.CodingMart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.coding52.CodingMart.dao.daoimpl.LoginDaoImpl;

@WebServlet(name="LoginServlet",urlPatterns="/LoginServlet")
public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
//		System.out.println("111");
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String res=new LoginDaoImpl().login(name, password);
		HttpSession session=request.getSession();
		session.setAttribute("name", name);	
		System.out.printf(name+password);
		PrintWriter pw = response.getWriter();
		pw.print(res);
		pw.close();
		
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		
		
	}

}
