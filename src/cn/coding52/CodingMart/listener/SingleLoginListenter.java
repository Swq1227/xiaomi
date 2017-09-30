package cn.coding52.CodingMart.listener;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import cn.coding52.CodingMart.model.User;

public class SingleLoginListenter implements HttpSessionAttributeListener{
	Map<String, HttpSession> map = new HashMap<String, HttpSession>();
	private String email;
	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {
		String name = event.getName();// 去除当前session的key
		System.out.println("当前的key是" + name);
		// 登录
		if (name.equals("xx")) {

			User user =new User();
			user.setUname((String) event.getValue());
			// map 中有记录，表明该帐号在其他机器上登录过，将以前的登录失效
			if (map.get(user.getUname()) != null) {

				HttpSession session = map.get(user.getUname());
				User oldUser =new User();
				oldUser.setUname((String) session.getAttribute("xx"));
					// map已经存在的旧的信息

				System.out.print("帐号" + oldUser.getUname()
						+ "已经登录，该登录将被迫下线。");

				session.removeAttribute("xx");
				

			}else {
				// 将session以用户名为索引，放入map中
				map.put(user.getUname(), event.getSession());
				System.out.print("帐号" + user.getUname() + "登录。");
			}

			
		}
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		String name = event.getName();

		// 注销
		if (name.equals("xx")) {
			// 将该session从map中移除
			User user = new User();
			user.setUname((String) event.getValue());
			map.remove(user.getUname());
			System.out.print("帐号" + user.getUname() + "注销。");
		}
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		
	}

}
