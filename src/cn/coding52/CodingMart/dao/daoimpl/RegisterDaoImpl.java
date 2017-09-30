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
		// 第一步： 先判断数据是不是空
		if (name == "" || psw == "" || rpsw == "" || email == "") {
			res = "1";// 数据为空
		}
		// 第二歩：psw和rpsw是不是一样
		else if (!(psw.equals(rpsw))) {
			res = "2";// 密码不一致
		} else {
			// 第三步：邮箱验证规则
			String regEx = "^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$";
			// 编译正则表达式
			Pattern pattern = Pattern.compile(regEx);
			// 忽略大小写的写法
			// Pattern pat = Pattern.compile(regEx, Pattern.CASE_INSENSITIVE);
			Matcher matcher = pattern.matcher(email);
			// 字符串是否与正则表达式相匹配
			boolean rs = matcher.matches();
			if (!rs) {
				res = "3";// 邮箱格式不正确
			}
			// 判断用户名是都被占用
			else {
				String sql1 = "SELECT * FROM `user` WHERE u_name=? OR email=?;";
				PreparedStatement psmt1 = JDBCUtil.getConncetion(sql1);
				try {
					psmt1.setString(1, name);
					psmt1.setString(2, email);
					ResultSet resultSet = psmt1.executeQuery();
					if (resultSet.next() == false) {
						// 执行写入数据库操作
						String sql = "INSERT INTO `user`(u_name,email,u_psw) VALUES (?,?,?)";
						PreparedStatement psmt = JDBCUtil.getConncetion(sql);
						psmt.setString(1, name);
						psmt.setString(2, email);
						psmt.setString(3, psw);
						psmt.execute();
						res="5";//注册成功
					} else {
						res = "4";// 用户名或邮箱已注册
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
