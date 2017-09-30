package cn.coding52.CodingMart.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.coding52.CodingMart.dao.daoimpl.Goods_managerDaoimpl;
import cn.coding52.CodingMart.model.Goods;
import cn.coding52.CodingMart.util.uploadUtil;

@WebServlet(name="add_GoodsServletSure",urlPatterns="/add_GoodsServletSure")
public class add_GoodsServletSure extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			System.out.println("111");
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			//上传图片
			Goods goods=uploadUtil.uploadfile(request);
			System.out.println(goods.toString());
			//写入数据库
			String res=new Goods_managerDaoimpl().add_GoodsDao(goods);
			PrintWriter pw = response.getWriter();
//			System.out.println("_____"+res);
			pw.print(res);
			pw.close();
			
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
