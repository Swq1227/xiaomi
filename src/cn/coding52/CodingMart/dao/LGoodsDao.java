package cn.coding52.CodingMart.dao;

import java.util.List;

import cn.coding52.CodingMart.model.Goods;
import cn.coding52.CodingMart.model.Photos;

public interface LGoodsDao {
	public List<Goods> getAllGoodsinfo();//头部商品
	public List<Goods> getAllGoodsinfo1();//明星商品
	public List<Goods> getAllGoodsinfo2();//热门商品
	public List<Goods> getAllGoodsinfo3();//电视商品
	public List<Goods> getAllGoodsinfo4();//电脑商品
	public List<Goods> getAllGoodsinfo5();//家居商品
	public List<Goods> getAllGoodsinfo6();//推荐商品
	
	
	

}
