package cn.coding52.CodingMart.dao;

import java.util.List;

import cn.coding52.CodingMart.model.User;



public interface manager_userDao {
	public List<User> getUserByPage(int page);
	public int getCountUser();
	
};
