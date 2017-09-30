package cn.coding52.CodingMart.dao.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.List;

import cn.coding52.CodingMart.dao.Types_managerDao;
import cn.coding52.CodingMart.model.Types;
import cn.coding52.CodingMart.util.JDBCUtil;





public class Types_managerDaoImpl implements Types_managerDao{
	//获得所有类别
	@Override
	public List<Types> getAllTypes() {
		List<Types> list = new ArrayList<Types>();
		String sql = "select * from types";
		PreparedStatement psmt;
		psmt = JDBCUtil.getConncetion(sql);

		try {
			ResultSet rs = psmt.executeQuery();
			
			while (rs.next()) {
				int t_id=rs.getInt(1);
				String t_name=rs.getString(2);
				Types types=new Types(t_id, t_name);
				list.add(types);	
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
		
	}
	//删除类别
	@Override
	public String delTypes(int id) {
		String r="";

		
			String sql1 = "select * from types where t_id=?";
			PreparedStatement psmt = JDBCUtil.getConncetion(sql1);

			try {
				psmt.setInt(1, id);
				ResultSet rs = psmt.executeQuery();
				if (rs.next()) {
					String sql = "delete from types where t_id=?";
					
					PreparedStatement psmt1 = JDBCUtil.getConncetion(sql);
					try {
						psmt1.setInt(1, id);
						boolean res=psmt1.execute();
						if (res) {
							r="1";
						}else {
							r="2";
						}
					} catch (Exception e) {

					}

				} else {
					r= "3";//数据不存在
				}
			} catch (Exception e) {

				e.printStackTrace();
			}
		
		
		
	
		return r;
	}
	//修改类别
	@Override
	public String updTypes(int id, String t_name) {
		
		String r="";
		
			String sql1 = "select * from types where t_id=?";
			PreparedStatement psmt = JDBCUtil.getConncetion(sql1);

			try {
				psmt.setInt(1, id);
				ResultSet rs = psmt.executeQuery();
				if (rs.next()) {
					String sql = "update types set t_name= ? where t_id=?";
					PreparedStatement psmt1 = JDBCUtil.getConncetion(sql);
					try {
						psmt1.setString(1, t_name);
						psmt1.setInt(2, id);
						boolean res=psmt1.execute();
						if (res) {
							r="1";
						}else {
							r="2";
						}
					} catch (Exception e) {

					}

				} else {
					r= "3";//数据不存在
				}
			} catch (Exception e) {

				e.printStackTrace();
			}
		
		
		
	
		return r;
	}
	//添加
	@Override
	public String addTypes(String name) {
		String sql = "insert into types(t_name) values(?)";
		String r="";
		PreparedStatement psmt = JDBCUtil.getConncetion(sql);
		try {
			psmt.setString(1, name);
			boolean res=psmt.execute();
			if (res) {
				r="1";
			}else {
				r="2";
			}
		} catch (Exception e) {

		}
		return r;
	}



}
