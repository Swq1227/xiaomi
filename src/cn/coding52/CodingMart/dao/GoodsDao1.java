package cn.coding52.CodingMart.dao;

import java.util.List;

import cn.coding52.CodingMart.model.Car;
import cn.coding52.CodingMart.model.Goods;

public interface GoodsDao1 {
	public List<Goods> getOneGoodsinfo( int gid);
	public boolean setOneCarinfo(List<Goods> list, String name);
	public List<Car> getOneCarsinfo(String name );
	public List<Goods> getAllGoodsinfo();
	public boolean  delOneCarsinfo( int id );
}
