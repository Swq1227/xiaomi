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
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;

		// req.setCharacterEncoding("utf-8");
		// resp.setCharacterEncoding("utf-8");
		// �ж��û��򿪵���ʲôҳ��login.jsp���û��������ʲô����LoginServlet
		// System.out.println(req.getServletPath());

		HttpSession session = req.getSession();

		if (req.getServletPath().indexOf("Login.html") > 0
				|| req.getServletPath().indexOf("LoginServlet") > 0
				|| req.getServletPath().indexOf(".css") > 0
				|| req.getServletPath().indexOf(".js") > 0
				|| req.getServletPath().indexOf(".png") > 0
				|| req.getServletPath().indexOf("Register.html") > 0
				|| req.getServletPath().indexOf("admin.html") > 0
				|| req.getServletPath().indexOf("RegisterServlet") > 0
				|| req.getServletPath().indexOf("admin_loginServelt") > 0) {
			// �����أ�������
			// System.out.println("�����أ�������");
			chain.doFilter(req, resp);
			return;
		} else {
			// �������������ù�http://localhost:8085/Blog/pinglun.html

			// �ж��û��Ƿ��½�������½����������ʣ�û�е�½��������ת��login.jsp
			String login = (String) session.getAttribute("xx");

			if (login == null) {
				resp.sendRedirect("login.jsp");
			} else {
				// System.out.println("�û��ѵ�½��������");
				chain.doFilter(req, resp);
			}

		}

	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

}
