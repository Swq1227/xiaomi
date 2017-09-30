package cn.coding52.CodingMart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.coding52.CodingMart.dao.daoimpl.GoodDao1Impl;
import cn.coding52.CodingMart.model.Goods;

@WebServlet(name = "homeServlet", urlPatterns = "/homeServlet")
public class homeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		List<Goods> list = new GoodDao1Impl().getOneGoodsinfo(id);
		HttpSession session=request.getSession();
		session.setAttribute("cid", id);
		request.setAttribute("ll", list);

		request.getRequestDispatcher("link/ShoppingShow.jsp").forward(request,
				response);

	}

}
