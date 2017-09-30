package cn.coding52.CodingMart.dao.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.coding52.CodingMart.dao.LGoodsDao;
import cn.coding52.CodingMart.model.Goods;
import cn.coding52.CodingMart.util.JDBCUtil_Lu;

public class LGoodsDaoImpl implements LGoodsDao{
	PreparedStatement psmt;
	@Override
	public List<Goods> getAllGoodsinfo() {
		String sql = "SELECT * FROM goods,types WHERE goods.t_id=types.t_id group by g_id desc";
		psmt = JDBCUtil_Lu.getConncetion(sql);
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
	public List<Goods> getAllGoodsinfo1() {
		String sql = "SELECT * FROM goods,types WHERE goods.t_id=types.t_id AND t_name='����' group by g_id desc limit 0,10;";
		psmt = JDBCUtil_Lu.getConncetion(sql);
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
	public List<Goods> getAllGoodsinfo2() {
		String sql = "SELECT * FROM goods,types WHERE goods.t_id=types.t_id AND t_name='�ҵ�����' group by g_id desc limit 0,8;";
		psmt = JDBCUtil_Lu.getConncetion(sql);
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
	public List<Goods> getAllGoodsinfo3() {
		String sql = "SELECT * FROM goods,types WHERE goods.t_id=types.t_id AND t_name='����Ӱ��' group by g_id desc limit 0,8;";
		psmt = JDBCUtil_Lu.getConncetion(sql);
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
	public List<Goods> getAllGoodsinfo4() {
		String sql = "SELECT * FROM goods,types WHERE goods.t_id=types.t_id AND t_name='����' group by g_id desc limit 0,8;";
		psmt = JDBCUtil_Lu.getConncetion(sql);
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
	public List<Goods> getAllGoodsinfo5() {
		String sql = "SELECT * FROM goods,types WHERE goods.t_id=types.t_id AND t_name='�Ҿ�' group by g_id desc limit 0,8;";
		psmt = JDBCUtil_Lu.getConncetion(sql);
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
	public List<Goods> getAllGoodsinfo6() {
		String sql = "SELECT * FROM goods,types WHERE goods.t_id=types.t_id AND t_name='�Ƽ�' group by g_id desc limit 0,10;";
		psmt = JDBCUtil_Lu.getConncetion(sql);
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

	

	

}
