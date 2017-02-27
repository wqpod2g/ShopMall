package com.netease.shopmall.services;

import com.netease.shopmall.entities.User;

public interface UserService {
	
	//检查登录用户信息是否正确
	public boolean checkLogin(User user);
		

}
