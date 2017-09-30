package cn.coding52.CodingMart.dao.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.coding52.CodingMart.dao.GoodsDao1;
import cn.coding52.CodingMart.model.Car;
import cn.coding52.CodingMart.model.Goods;
import cn.coding52.CodingMart.util.JDBCUtil;
import cn.coding52.CodingMart.util.JDBCUtil_Lu;

public class GoodDao1Impl implements GoodsDao1{
	PreparedStatement psmt;
	public List<Goods> getOneGoodsinfo(int sid) {
		String sql="SELECT * FROM goods WHERE g_id=? limit 0,1";
		psmt = JDBCUtil.getConncetion(sql);
		List<Goods> list = new ArrayList<Goods>();
		try {
			psmt.setInt(1, sid);
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				int gid=rs.getInt(1);
				int id=rs.getInt(8);
				String name = rs.getString(2);
				String content = rs.getString(3);
				double price=rs.getDouble(4);
				String rate=rs.getString(5);
				String url=rs.getString(7);
				
Goods goods=new Goods(gid, id, name, content, rate, url, price);
//				Goods goods = new Goods(name,url,id);
		list.add(goods);
			}
			

		} catch (Exception e) {

		}
		return list;
	}
	@Override
	public boolean setOneCarinfo(List<Goods> list, String name) {
		String sql="insert into car(g_id,g_name,g_url,g_price,u_name) value(?,?,?,?,?)";
		psmt = JDBCUtil.getConncetion(sql);
		try {
			psmt.setInt(1, list.get(0).getGid());
			psmt.setString(3, list.get(0).getGurl());
			psmt.setDouble(4, list.get(0).getGprice());
			psmt.setString(2, list.get(0).getGname());
			psmt.setString(5, name);
			psmt.execute();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return true;
	}
	@Override
	public List<Car> getOneCarsinfo(String name) {
		String sql="SELECT * FROM car where u_name=? ";
		psmt = JDBCUtil.getConncetion(sql);
		
		List<Car> list = new ArrayList<Car>();
		
		try {
			psmt.setString(1, name);

			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				int gid=rs.getInt(3);
			
				String cname = rs.getString(4);
				String content = rs.getString(7);
				double cprice=rs.getDouble(6);
			
				String curl=rs.getString(5);
				
      Car car =new Car(gid, curl, cname, cprice,content);
//				Goods goods = new Goods(name,url,id);
		         list.add(car);
			}
			

		} catch (Exception e) {

		}
		return list;
}
	@Override
	public List<Goods> getAllGoodsinfo() {
			String sql = "SELECT * FROM goods,types WHERE goods.t_id=types.t_id group by g_id desc";
			psmt = JDBCUtil.getConncetion(sql);
			List<Goods> list = new ArrayList<Goods>();
			try {
				ResultSet rs = psmt.executeQuery();
				while (rs.next()) {
					int gid = rs.getInt(1);
					int id = rs.getInt(8);
					String name = rs.getString(2);
					String content = rs.getString(3);
					double price = rs.getDouble(4);
					String rate = rs.getString(5);
					String url = rs.getString(7);
					Goods goods = new Goods(gid, id, name, content, rate, url,
							price);
					// Goods goods = new Goods(name,url,id);
					list.add(goods);
				}

			} catch (Exception e) {

			}
			return list;
		}
	@Override
	public boolean delOneCarsinfo(int id) {
		String sql = "delete from car where g_id=?";
		psmt = JDBCUtil.getConncetion(sql);
		try {
			psmt.setInt(1, id);
			psmt.execute();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
}