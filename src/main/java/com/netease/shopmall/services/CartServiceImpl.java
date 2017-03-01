package com.netease.shopmall.services;

import java.util.Set;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import redis.clients.jedis.Jedis;

import com.netease.shopmall.entities.Goods;
import com.netease.shopmall.utils.JedisPoolUtils;

@Service
public class CartServiceImpl implements CartService{
	
	private static final Logger logger = LoggerFactory.getLogger(CartService.class);

	//保存用户购物车商品至redis
	@Override
	public void saveItem(Goods entity, String username) {
		Jedis jedis = JedisPoolUtils.getInstance().getJedis();
		String goodsJsonStr =  JSONObject.fromObject(entity).toString();
		logger.info("saveItem "+goodsJsonStr+" to "+username+"'s shopcart");
		if(!jedis.hexists("shopcart:"+username,entity.getId()+"")) {
			jedis.hset("shopcart:"+username, entity.getId()+"",goodsJsonStr);
		}
		else {
			String JsonStr = jedis.hget("shopcart:"+username, entity.getId()+"");
			JSONObject goodsJson = JSONObject.fromObject(JsonStr);
			int quantity = Integer.valueOf(goodsJson.getString("quantity"));
			goodsJson.put("quantity", quantity+1);
			jedis.hset("shopcart:"+username, entity.getId()+"",goodsJson.toString());
		}
		JedisPoolUtils.getInstance().returnRes(jedis);
	}

	//从redis拿出用户购物车所有商品
	@Override
	public String getAllItem(String username) {
		JSONObject goodsJson = new JSONObject();
		Jedis jedis = JedisPoolUtils.getInstance().getJedis();
		Set<String> keySet = jedis.hkeys("shopcart:"+username);
		for(String key:keySet) {
			JSONObject goodJson = JSONObject.fromObject(jedis.hget("shopcart:"+username, key));
			goodsJson.put(key, goodJson);
		}
		logger.info("CartServiceImpl getAllItem "+username+" "+goodsJson.toString());
		JedisPoolUtils.getInstance().returnRes(jedis);
		return goodsJson.toString();
	}

	//清空购物车
	@Override
	public void emptyCart(String username) {
		Jedis jedis = JedisPoolUtils.getInstance().getJedis();
		jedis.del("shopcart:"+username);
		JedisPoolUtils.getInstance().returnRes(jedis);
		logger.info("empty "+username+"'s shopcart");
	}

	@Override
	public void deleteItem(String username, int id) {
		Jedis jedis = JedisPoolUtils.getInstance().getJedis();
		jedis.hdel("shopcart:"+username, id+"");
		JedisPoolUtils.getInstance().returnRes(jedis);
		logger.info("delete "+username+"'s item "+id);
		
	}

}
