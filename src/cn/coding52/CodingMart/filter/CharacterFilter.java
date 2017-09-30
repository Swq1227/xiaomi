package cn.coding52.CodingMart.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CharacterFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	
	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// doFilter��ʼ����
//				System.out.println("�ҿ�ʼ����");
				HttpServletRequest request = (HttpServletRequest) arg0;
				HttpServletResponse response = (HttpServletResponse) arg1;
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				
arg2.doFilter(request, response);		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
