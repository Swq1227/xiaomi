package cn.coding52.CodingMart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.coding52.CodingMart.dao.daoimpl.LoginDaoImpl;
import cn.coding52.CodingMart.dao.daoimpl.RegisterDaoImpl;
import cn.coding52.CodingMart.model.User;

@WebServlet(name="RegisterServlet",urlPatterns="/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding( "UTF-8");
//		System.out.println("1111");
		//获得页面传过来的值
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		String rpassword=request.getParameter("rpassword");
		String email=request.getParameter("email");
//		System.out.println(name+password+rpassword+email);
		//执行注册方法并获得返回值
		String res=new RegisterDaoImpl().register(name, password, rpassword, email);
		PrintWriter pw = response.getWriter();
		pw.print(res);
		pw.close();
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doGet(request, response);
		
		

		
	}

}
