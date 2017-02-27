package com.netease.shopmall.entities;

import java.io.Serializable;

/**
 * 
 * @author mrpod2g
 *
 */
public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8428799016055946231L;
	
	private int id;
	
	//用户名
	private String name;
	
	//密码
	private String pass;
	
	//0代表买家	1代表卖家
	private int flag;
	
	public User() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}
	
	

}
