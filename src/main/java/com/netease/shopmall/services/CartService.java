package com.netease.shopmall.services;

import com.netease.shopmall.entities.Goods;

/**
 * 购物车业务接口
 * @author mrpod2g
 *
 */
public interface CartService {
	
	//添加商品到用户购物车
	public void saveItem(Goods entity,String username);
	
	//从购物车中取出所有商品
	public String getAllItem(String username);
	
	//清空某个用户的购物车
	public void emptyCart(String username);
	
	//删除某件商品
	public void deleteItem(String username,int id);

}
