package cn.coding52.CodingMart.dao;

import java.util.List;

import cn.coding52.CodingMart.model.Types;



public interface Types_managerDao {
	public List<Types> getAllTypes(); 
	
	public String delTypes(int id);
	
	public String updTypes(int id,String t_name);
	
	public String addTypes(String name); 

}
