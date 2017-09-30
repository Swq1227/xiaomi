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

import net.sf.json.JSONArray;
import cn.coding52.CodingMart.dao.daoimpl.GoodDao1Impl;
import cn.coding52.CodingMart.model.Car;
import cn.coding52.CodingMart.model.Goods;
@WebServlet(name="ShoppingCarServlet",urlPatterns="/ShoppingCarServlet")
public class ShoppingCarServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
            doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session=request.getSession();
		String name=(String) session.getAttribute("name");
		System.out.println(name);
		List<Car> list = new GoodDao1Impl().getOneCarsinfo(name);
		PrintWriter pw = response.getWriter();
		JSONArray array=	JSONArray.fromObject(list);
		pw.print(array);;//requset.setattribute("ll",list);
		pw.flush();
		pw.close();

	}

}
