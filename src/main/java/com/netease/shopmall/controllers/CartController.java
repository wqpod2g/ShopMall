package com.netease.shopmall.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.netease.shopmall.entities.Goods;
import com.netease.shopmall.entities.User;
/**
 * 购物车控制器
 * @author mrpod2g
 *
 */
@Controller
@RequestMapping("/cart")
public class CartController {
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	
	//将购物车中的商品缓存至redis
	@RequestMapping("/addItem")
	public void addItem(Goods entity,HttpServletRequest request,HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("buyerUser");
		if(user==null) return;
		logger.info(user.getName()+" add item "+entity.getId());
		PrintWriter out = response.getWriter();
		out.write("成功添加到购物车！");
		out.flush();
		out.close();
	}

}
