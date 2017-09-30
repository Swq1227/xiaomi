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
import cn.coding52.CodingMart.dao.daoimpl.PhotosDaoImpl;
import cn.coding52.CodingMart.model.Goods;
import cn.coding52.CodingMart.model.Photos;
@WebServlet(name="PhotosServlet",urlPatterns="/PhotosServlet")
public class PhotosServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// 再把所有的评论给查询出来
		List<Photos> list = new PhotosDaoImpl().getAllPhotosinfo7();
		PrintWriter pw = response.getWriter();
		JSONArray array=	JSONArray.fromObject(list);
		   System.out.println(array.toString());
		pw.print(array);
		pw.flush();
		pw.close();
		

		
	}

}
