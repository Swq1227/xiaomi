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
@WebServlet(name="TransferServlet",urlPatterns="/TransferServlet")
public class TransferServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		// 再把所有的评论给查询出来
	  /* int id = Integer.parseInt(request.getParameter("gid"));
       System.out.println(id);*/
		HttpSession session=request.getSession();
		int id= (Integer)session.getAttribute("cid");
		String name=(String) session.getAttribute("name");
       List<Goods> list =new GoodDao1Impl().getOneGoodsinfo(id);
       boolean ok=new GoodDao1Impl().setOneCarinfo(list,name);
       PrintWriter pw = response.getWriter();
		//JSONArray array=	JSONArray.fromObject(ok);

		pw.print(ok);//requset.setattribute("ll",list);
		pw.flush();
		pw.close();
     
       
	}

}
