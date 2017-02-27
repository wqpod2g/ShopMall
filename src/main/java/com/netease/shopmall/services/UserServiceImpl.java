package com.netease.shopmall.services;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.netease.shopmall.entities.User;
import com.netease.shopmall.mapper.UserDAO;

@Service
public class UserServiceImpl implements UserService{
	
	@Resource
	UserDAO userdao;

	/**
	 * 
	 */
	@Override
	public boolean checkLogin(User user) {
		User userInDB = userdao.getUserByName(user.getName());
		if(userInDB!=null&&userInDB.getPass().equals(user.getPass())&&userInDB.getFlag()==user.getFlag()) {
			return true;
		}
		return false;
	}

}
