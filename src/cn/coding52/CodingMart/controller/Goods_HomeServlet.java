package cn.coding52.CodingMart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import cn.coding52.CodingMart.dao.daoimpl.LGoodsDaoImpl;
import cn.coding52.CodingMart.model.Goods;
@WebServlet(name="Goods_HomeServlet",urlPatterns="/Goods_HomeServlet")
public class Goods_HomeServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 再把所有的评论给查询出来
		List<Goods> list = new LGoodsDaoImpl().getAllGoodsinfo5();
		PrintWriter pw = response.getWriter();
		JSONArray array=	JSONArray.fromObject(list);
		   System.out.println(array.toString());
		pw.print(array);//requset.setattribute("ll",list);
		pw.flush();
		pw.close();

		
	}

}
