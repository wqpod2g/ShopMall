package com.netease.shopmall.test;

import junit.framework.Assert;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import com.netease.shopmall.entities.User;
import com.netease.shopmall.mapper.UserDAO;

public class TestUser {
	
	@Test
	public void getUserByName() {
		SqlSession session=MyBatisUtil.getSession();
		try {
			UserDAO userdao=session.getMapper(UserDAO.class);
			User user=userdao.getUserByName("mrpod2");
			Assert.assertEquals(null, user);
		} finally {
			session.close();
		}
	}

}
