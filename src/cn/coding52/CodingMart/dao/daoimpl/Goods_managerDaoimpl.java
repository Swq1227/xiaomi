package cn.coding52.CodingMart.dao.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.coding52.CodingMart.dao.Goods_managerDao;
import cn.coding52.CodingMart.model.Goods;
import cn.coding52.CodingMart.model.Types;
import cn.coding52.CodingMart.util.JDBCUtil;

public class Goods_managerDaoimpl implements Goods_managerDao{

	@Override
	public String add_GoodsDao(Goods goods) {
		String r="";
		//先判断用户输入的信息是否为空
		if (goods.getGname()==""||goods.getGcontent()==""||goods.getGnum()==0||goods.getGprice()==0.0||goods.getGurl()=="upload/") {
			r="1";//数据填写不完整
		}
		//再查找数据库中有没有该商品
		else{
			String sql1 = "select * from goods where g_name=?";
			PreparedStatement psmt = JDBCUtil.getConncetion(sql1);
				try {
					psmt.setString(1, goods.getGname());
					ResultSet rs = psmt.executeQuery();
					if (rs.next()) {
						r="2";//已有商品信息
					}else {
						String sql = "INSERT INTO goods(g_name,g_content,g_price,g_num,g_url,g_rate,t_id) VALUES (?,?,?,?,?,?,(SELECT t_id FROM types WHERE t_name=?))";
						PreparedStatement psmt1 = JDBCUtil.getConncetion(sql);
						psmt1.setString(1, goods.getGname());
						psmt1.setString(2, goods.getGcontent());
						psmt1.setDouble(3, goods.getGprice());
						psmt1.setInt(4, goods.getGnum());
						psmt1.setString(5, goods.getGurl());
						psmt1.setString(6, goods.getGrate());
						psmt1.setString(7, goods.getTname());
						
						boolean b=psmt1.execute();
//						System.out.println(b);  成功为false
						if (!b) {
							r="3";//成功
						}else{
							r="4";//失败
						}
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
		}		
		return r;
	}

	@Override
	public List<Goods> getUserByPage(int page) {
		String sql = "select * from goods ORDER BY g_id limit ?,5";
		PreparedStatement pmst = JDBCUtil.getConncetion(sql);
		List<Goods> list = new ArrayList<Goods>();
		try {
			
			pmst.setInt(1, page * 5);

			ResultSet rs = pmst.executeQuery();

			while (rs.next()) {
				int gid=rs.getInt(1);
				String gname=rs.getString(2);
				String gcontent=rs.getString(3);
				double gprice=rs.getDouble(4);
				int gnum=rs.getInt(6);
				int tid=rs.getInt(8);
				Goods goods=new Goods(gid, gnum, tid, gname, gcontent, gprice);
				list.add(goods);	
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int getCountGoods() {
		String sql = "select count(*) from goods";
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

	@Override
	public String delGoods(int id) {
		String r="";

		
		String sql1 = "select * from goods where g_id=?";
		PreparedStatement psmt = JDBCUtil.getConncetion(sql1);

		try {
			psmt.setInt(1, id);
			ResultSet rs = psmt.executeQuery();
			if (rs.next()) {
				String sql = "delete from goods where g_id=?";
				
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

	@Override
	public List<Goods> getAllGoods() {
		List<Goods> list = new ArrayList<Goods>();
//		int g_id=0;
		
		String sql = "select * from goods";
		PreparedStatement psmt;
		psmt = JDBCUtil.getConncetion(sql);

		try {
			ResultSet rs = psmt.executeQuery();
			
			while (rs.next()) {
				String gname=rs.getString(2);
				Goods goods=new Goods(gname);
				list.add(goods);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
		
		
	}

	@Override
	public String upd_GoodsDao(Goods goods) {
		String r="";
		String sql = "UPDATE goods SET g_name=?,g_content=?,g_price=?,g_num=?,g_url=?,g_rate=?,t_id=(SELECT t_id FROM types WHERE t_name=?) WHERE g_name=?;";
		PreparedStatement psmt1 = JDBCUtil.getConncetion(sql);
		try {
			psmt1.setString(1, goods.getNewName());
			psmt1.setString(2, goods.getGcontent());
			psmt1.setDouble(3, goods.getGprice());
			psmt1.setInt(4, goods.getGnum());
			psmt1.setString(5, goods.getGurl());
			psmt1.setString(6, goods.getGrate());
			psmt1.setString(7, goods.getTname());
			psmt1.setString(8, goods.getGname());
			
			boolean b=psmt1.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return r;
	}

}
