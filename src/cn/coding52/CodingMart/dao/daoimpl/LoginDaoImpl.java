package cn.coding52.CodingMart.dao.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.coding52.CodingMart.dao.LoginDao;
import cn.coding52.CodingMart.util.JDBCUtil;



public class LoginDaoImpl implements LoginDao{

	@Override
	public String login(String name, String psw) {
		
		String result="";
		if (name == "" || psw == "") {
			result = "1";
		}else {	
//		String sql="select * from user  where u_name=? and u_psw=? ";
			String sql=	"select * from user  where (u_name=? and u_psw=?)OR (email=? AND u_psw=?)";
		PreparedStatement psmt=JDBCUtil.getConncetion(sql);
		
		try {
			psmt.setString(1, name);
			psmt.setString(2, psw);
			psmt.setString(3, name);
			psmt.setString(4, psw);
			 
			ResultSet rs = psmt.executeQuery();

			if (rs.next()) {
				result = "2";

			} else {
				result = "3";
			}

		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		}
		return result;
	}
	
	}
