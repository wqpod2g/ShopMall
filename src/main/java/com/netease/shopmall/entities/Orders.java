package com.netease.shopmall.entities;

import java.util.Date;


/**
 * 订单
 * @author mrpod2g
 *
 */
public class Orders {
	
	//订单id
	private int id;
	
	//下单的用户名
	private String username;
	
	//购买日期
	private Date buydate;
	
	//购买数量
	private int quantity;
	
	//商品名称
	private String pname;
	
	//商品id
	private int pid;
	
	//商品价格
	private double price;
	
	//商品照片
	private String picture;
	
	

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getId() {
		return id;
	}
	
	public Orders() {
		
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Date getBuydate() {
		return buydate;
	}

	public void setBuydate(Date buydate) {
		this.buydate = buydate;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}
	
	

}
