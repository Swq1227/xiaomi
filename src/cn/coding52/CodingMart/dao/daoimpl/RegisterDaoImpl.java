package cn.coding52.CodingMart.dao.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import cn.coding52.CodingMart.util.JDBCUtil;
import cn.coding52.CodingMart.dao.RegisterDao;
import cn.coding52.CodingMart.model.User;

public class RegisterDaoImpl implements RegisterDao {

	@Override
	public String register(String name, String psw, String rpsw, String email) {
		String res = "";
		// ��һ���� ���ж������ǲ��ǿ�
		if (name == "" || psw == "" || rpsw == "" || email == "") {
			res = "1";// ����Ϊ��
		}
		// �ڶ��i��psw��rpsw�ǲ���һ��
		else if (!(psw.equals(rpsw))) {
			res = "2";// ���벻һ��
		} else {
			// ��������������֤����
			String regEx = "^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$";
			// ����������ʽ
			Pattern pattern = Pattern.compile(regEx);
			// ���Դ�Сд��д��
			// Pattern pat = Pattern.compile(regEx, Pattern.CASE_INSENSITIVE);
			Matcher matcher = pattern.matcher(email);
			// �ַ����Ƿ���������ʽ��ƥ��
			boolean rs = matcher.matches();
			if (!rs) {
				res = "3";// �����ʽ����ȷ
			}
			// �ж��û����Ƕ���ռ��
			else {
				String sql1 = "SELECT * FROM `user` WHERE u_name=? OR email=?;";
				PreparedStatement psmt1 = JDBCUtil.getConncetion(sql1);
				try {
					psmt1.setString(1, name);
					psmt1.setString(2, email);
					ResultSet resultSet = psmt1.executeQuery();
					if (resultSet.next() == false) {
						// ִ��д�����ݿ����
						String sql = "INSERT INTO `user`(u_name,email,u_psw) VALUES (?,?,?)";
						PreparedStatement psmt = JDBCUtil.getConncetion(sql);
						psmt.setString(1, name);
						psmt.setString(2, email);
						psmt.setString(3, psw);
						psmt.execute();
						res="5";//ע��ɹ�
					} else {
						res = "4";// �û�����������ע��
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			}

		}

		return res;
	}

	

}
