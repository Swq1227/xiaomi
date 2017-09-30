package cn.coding52.CodingMart.dao.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.coding52.CodingMart.dao.TypesDao;
import cn.coding52.CodingMart.model.Types;
import cn.coding52.CodingMart.util.JDBCUtil;


public class TypesDaoImpl implements TypesDao{
PreparedStatement psmt;
	@Override
	public List<Types> getAllTypeinfo() {
		String sql="select * from types group by t_id desc limit 0,10";
		psmt = JDBCUtil.getConncetion(sql);
		List<Types> list = new ArrayList<Types>();
		try {
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				int id=rs.getInt(1);
				String name = rs.getString(2);
				
				

				Types types = new Types(id,name);
				list.add(types);
			
			}
			System.out.println("123");

		} catch (Exception e) {

		}
		return list;
		
	}

}
