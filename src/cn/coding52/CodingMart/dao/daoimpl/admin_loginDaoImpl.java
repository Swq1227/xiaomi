package cn.coding52.CodingMart.dao.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cn.coding52.CodingMart.dao.admin_loginDao;
import cn.coding52.CodingMart.util.JDBCUtil;


public class admin_loginDaoImpl implements admin_loginDao{

	@Override
	public String login(String name, String password) {
		String result="";
		if (name == "" || password == "") {
			result = "1";
		} else {
			String sql = "select * from admin where ad_name=? and ad_psw=?";
			PreparedStatement psmt = JDBCUtil.getConncetion(sql);

			try {
				psmt.setString(1, name);
				psmt.setString(2, password);
				ResultSet rs = psmt.executeQuery();
				if (rs.next()) {
					result = "2";

				} else {
					result = "3";
				}
			} catch (Exception e) {

				e.printStackTrace();
			}

		}
		
		return result;
	}

}
