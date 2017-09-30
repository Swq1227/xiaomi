package cn.coding52.CodingMart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.coding52.CodingMart.dao.daoimpl.Types_managerDaoImpl;
import cn.coding52.CodingMart.model.Types;

@WebServlet(name="del_typesServlet",urlPatterns="/del_typesServlet")
public class del_typesServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Types> list=new Types_managerDaoImpl().getAllTypes();
     	request.setAttribute("list", list);
     	System.out.println(list);
     	request.getRequestDispatcher("link/admin_del_Types.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
