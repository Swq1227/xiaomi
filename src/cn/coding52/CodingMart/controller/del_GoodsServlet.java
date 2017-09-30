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
import cn.coding52.CodingMart.model.Goods;


@WebServlet(name="del_GoodsServlet",urlPatterns="/del_GoodsServlet")
public class del_GoodsServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int count = 0;
		// ��ѯ����������
		int number=new Goods_managerDaoimpl().getCountGoods();
		if (number % 5 == 0) {
			count = number / 5;//����Ϊż��ʱ
		} else {
			count = number /5 + 1;//����Ϊ����ʱ
		}
		int page;
		if (request.getParameter("page") == null) {
			page = 0;// Ĭ�ϵ�ҳ����Ϊ��
		} else {
			page = Integer.parseInt(request.getParameter("page"));
			//�ж�����һҳ����һҳ
			if (request.getParameter("type")!=null) {
				if (request.getParameter("type").equals("pre")) {
					page--;
					if (page <= 0) {
						page = 0;
					}
				}else if (request.getParameter("type").equals("next")) {
					++page;
					if (page >= (count-1)) {
						page = count-1;
					}
				}
				
			}
			
			 

		}
		List<Goods> list=new Goods_managerDaoimpl().getUserByPage(page);
		request.setAttribute("list", list);
		request.setAttribute("count", count);
		request.setAttribute("number", number);
		request.setAttribute("page", page);

		request.getRequestDispatcher("link/admin_del_Goods.jsp").forward(request, response);

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
