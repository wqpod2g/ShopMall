package com.netease.shopmall.mapper;

import java.util.List;

import com.netease.shopmall.entities.Orders;

public interface CartDAO {
	
	//插入订单
	public int insert(Orders order);
	
	//插入一批订单
	public void insertBatch(List<Orders> list);
	
	//获取用户历史订单
	public List<Orders> getAllOrders(String username);

}
