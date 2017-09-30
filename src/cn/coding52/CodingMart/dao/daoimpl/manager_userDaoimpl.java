package cn.coding52.CodingMart.dao.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.coding52.CodingMart.dao.manager_userDao;
import cn.coding52.CodingMart.model.User;
import cn.coding52.CodingMart.util.JDBCUtil;

public class manager_userDaoimpl implements manager_userDao{

	@Override
	public List<User> getUserByPage(int page) {
		String sql = "select * from user ORDER BY u_id limit ?,5";
		PreparedStatement pmst = JDBCUtil.getConncetion(sql);
		List<User> list = new ArrayList<User>();
		try {
			
			pmst.setInt(1, page * 5);

			ResultSet rs = pmst.executeQuery();

			while (rs.next()) {
				int userid=rs.getInt(1);
				String name=rs.getString(2);
				String email=rs.getString(3);
				User user=new User(userid, name, email);
				list.add(user);	
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int getCountUser() {
		String sql = "select count(*) from user";
		PreparedStatement pmst = JDBCUtil.getConncetion(sql);
		int allblog = 0;
		try {
			ResultSet rs = pmst.executeQuery();

			while (rs.next()) {
				allblog = rs.getInt(1);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return allblog;
	}

}
