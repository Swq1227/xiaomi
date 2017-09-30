package cn.coding52.CodingMart.controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.coding52.CodingMart.dao.daoimpl.Types_managerDaoImpl;

@WebServlet(name="upd_typesServletSure",urlPatterns="/upd_typesServletSure")
public class upd_typesServletSure extends HttpServlet {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("111");
		String str=request.getParameter("t_id");
		int t_id=Integer.parseInt(str);
		String t_name=request.getParameter("t_name");
		System.out.println(t_id+t_name);
		String res=new Types_managerDaoImpl().updTypes(t_id, t_name);
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
