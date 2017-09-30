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
		String name = event.getName();// ȥ����ǰsession��key
		System.out.println("��ǰ��key��" + name);
		// ��¼
		if (name.equals("xx")) {

			User user =new User();
			user.setUname((String) event.getValue());
			// map ���м�¼���������ʺ������������ϵ�¼��������ǰ�ĵ�¼ʧЧ
			if (map.get(user.getUname()) != null) {

				HttpSession session = map.get(user.getUname());
				User oldUser =new User();
				oldUser.setUname((String) session.getAttribute("xx"));
					// map�Ѿ����ڵľɵ���Ϣ

				System.out.print("�ʺ�" + oldUser.getUname()
						+ "�Ѿ���¼���õ�¼���������ߡ�");

				session.removeAttribute("xx");
				

			}else {
				// ��session���û���Ϊ����������map��
				map.put(user.getUname(), event.getSession());
				System.out.print("�ʺ�" + user.getUname() + "��¼��");
			}

			
		}
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		String name = event.getName();

		// ע��
		if (name.equals("xx")) {
			// ����session��map���Ƴ�
			User user = new User();
			user.setUname((String) event.getValue());
			map.remove(user.getUname());
			System.out.print("�ʺ�" + user.getUname() + "ע����");
		}
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		
	}

}
