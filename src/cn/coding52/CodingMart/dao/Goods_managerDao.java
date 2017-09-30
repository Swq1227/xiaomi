package cn.coding52.CodingMart.dao;

import java.util.List;

import cn.coding52.CodingMart.model.Goods;

public interface Goods_managerDao {
	//添加商品信息
	public String add_GoodsDao(Goods goods);
	
	public List<Goods> getUserByPage(int page);
	
	public int getCountGoods();
	
	public String delGoods(int id);
	
	public List<Goods> getAllGoods();
	
	public String upd_GoodsDao(Goods goods);
	
}
