package cn.coding52.CodingMart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.coding52.CodingMart.dao.daoimpl.GoodDao1Impl;
@WebServlet(name="DelShopCarServlet",urlPatterns="/DelShopCarServlet")
public class DelShopCarServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
        int delid = Integer.parseInt(request.getParameter("del_id"));
        boolean ok=   new GoodDao1Impl().delOneCarsinfo(delid);
        System.out.println(ok);
       response.sendRedirect("link/ShoppingCar.html");
           
		
	}

}
