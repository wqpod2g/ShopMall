package com.netease.shopmall.test;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.netease.shopmall.utils.JedisPoolUtils;

import redis.clients.jedis.Jedis;

public class TestRedis {
	
	private static final Logger logger = LoggerFactory.getLogger(TestRedis.class);

	public static void main(String[] args) {
		// 连接本地的 Redis 服务
		Jedis jedis = JedisPoolUtils.getInstance().getJedis();
		logger.info("Connection to server sucessfully");
		// 设置 redis 字符串数据
		jedis.set("w3ckey", "Redis tutorial");
		// 获取存储的数据并输出
		logger.info("Stored string in redis:: " + jedis.get("w3ckey"));
		
		JedisPoolUtils.getInstance().returnRes(jedis);
	}

}
