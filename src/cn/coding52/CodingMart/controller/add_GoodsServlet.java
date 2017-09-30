package cn.coding52.CodingMart.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.coding52.CodingMart.dao.daoimpl.Types_managerDaoImpl;
import cn.coding52.CodingMart.model.Types;
@WebServlet(name="add_GoodsServlet",urlPatterns="/add_GoodsServlet")
public class add_GoodsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//查询数据库的所有类别在添加商品的类别下拉框中显示
		List<Types> list=new Types_managerDaoImpl().getAllTypes();
     	request.setAttribute("list", list);
     	request.getRequestDispatcher("link/admin_add_Goods.jsp").forward(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request, response);
		
	}

}
