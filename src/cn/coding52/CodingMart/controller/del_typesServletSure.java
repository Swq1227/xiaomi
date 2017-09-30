package cn.coding52.CodingMart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.coding52.CodingMart.dao.daoimpl.Types_managerDaoImpl;
@WebServlet(name="del_typesServletSure",urlPatterns="/del_typesServletSure")


public class del_typesServletSure extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("111");
		String str=request.getParameter("t_id");
		int t_id=Integer.parseInt(str);
		String res=new Types_managerDaoImpl().delTypes(t_id);
		PrintWriter pw = response.getWriter();
		System.out.println("_____"+res);
		pw.print(res);
		pw.close();
		
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		
	}

}
