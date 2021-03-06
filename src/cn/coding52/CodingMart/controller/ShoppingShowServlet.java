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
import cn.coding52.CodingMart.model.Goods;
@WebServlet(name="ShoppingShowServlet",urlPatterns="/ShoppingShowServlet")
public class ShoppingShowServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		// 再把所有的评论给查询出来
		HttpSession session=request.getSession();
		//session.getAttribute("name");

		System.out.println(request.getParameter("gid")+"-------->");
        int id = Integer.parseInt(request.getParameter("gid"));
    
		List<Goods> list = new GoodDao1Impl().getOneGoodsinfo(id);

		PrintWriter pw = response.getWriter();
		JSONArray array=	JSONArray.fromObject(list);
		
		   System.out.println(array.toString());

		pw.print(array);//requset.setattribute("ll",list);
		pw.flush();
		pw.close();
	}

}
