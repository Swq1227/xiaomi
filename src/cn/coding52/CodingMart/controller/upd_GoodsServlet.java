package cn.coding52.CodingMart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.coding52.CodingMart.dao.daoimpl.Goods_managerDaoimpl;
import cn.coding52.CodingMart.dao.daoimpl.Types_managerDaoImpl;
import cn.coding52.CodingMart.model.Goods;
import cn.coding52.CodingMart.model.Types;
@WebServlet(name="upd_GoodsServlet",urlPatterns="/upd_GoodsServlet")
public class upd_GoodsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//查询数据库的所有类别在添加商品的类别下拉框中显示
				List<Types> list=new Types_managerDaoImpl().getAllTypes();
		     	request.setAttribute("list", list);
		     	//查询数据库中所有商品显示在下拉框中
		     	List<Goods> list1=new Goods_managerDaoimpl().getAllGoods();
		     	request.setAttribute("list1", list1);
		     	request.getRequestDispatcher("link/admin_upd_Goods.jsp").forward(request, response);
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
