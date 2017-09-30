package cn.coding52.CodingMart.dao.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import cn.coding52.CodingMart.dao.PhotosDao;
import cn.coding52.CodingMart.model.Photos;
import cn.coding52.CodingMart.util.JDBCUtil;

public class PhotosDaoImpl implements PhotosDao{
PreparedStatement psmt;
	
	@Override
	public List<Photos> getAllPhotosinfo7() {
		String sql="select * from photos group by p_id limit 0,6";
		psmt=JDBCUtil.getConncetion(sql);
		List<Photos> list = new ArrayList<Photos>();
		try {
			ResultSet rs = psmt.executeQuery();
			while (rs.next()) {
				int pid = rs.getInt(1);
				String url = rs.getString(2);
				int tid=rs.getInt(3);
				Photos photos = new Photos(pid, url,tid);
				list.add(photos);
			}

		} catch (Exception e) {

		}
		return list;
	}

}
