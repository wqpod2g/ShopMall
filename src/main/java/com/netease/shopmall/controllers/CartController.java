package com.netease.shopmall.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.netease.shopmall.entities.Goods;
import com.netease.shopmall.entities.User;
import com.netease.shopmall.services.CartService;
/**
 * 购物车控制器
 * @author mrpod2g
 *
 */
@Controller
@RequestMapping("/cart")
public class CartController {
	private static final Logger logger = LoggerFactory.getLogger(CartController.class);
	
	@Resource
	CartService cartservice;
	
	//将购物车中的商品缓存至redis
	@RequestMapping("/addItem")
	public void addItem(Goods entity,HttpServletRequest request,HttpServletResponse response) throws IOException {
		String picture = entity.getPicture();
		entity.setPicture("/ShopMall/images/"+picture);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("buyerUser");
		if(user==null) return;
		cartservice.saveItem(entity, user.getName());
		logger.info(user.getName()+" add item "+entity.getId());
		PrintWriter out = response.getWriter();
		out.write("成功添加到购物车！");
		out.flush();
		out.close();
	}
	
	//清空购物车
	@RequestMapping("/empty")
	public void emptyCart(HttpServletRequest request,HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("buyerUser");
		if(user==null) return;
		cartservice.emptyCart(user.getName());
		PrintWriter out = response.getWriter();
		out.write("清空购物车成功！");
		out.flush();
		out.close();
	}
	//删除购物车的某件商品
	@RequestMapping("/deleteItem")
	public void deleteItem(int id,HttpServletRequest request,HttpServletResponse response) throws IOException {
		logger.info("deleteItem id="+id);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("buyerUser");
		if(user==null) return;
		cartservice.deleteItem(user.getName(),id);
		PrintWriter out = response.getWriter();
		out.write("删除商品成功！");
		out.flush();
		out.close();
	}
	//结算页面
	@RequestMapping("/gotobuy")
	public String gotobuy(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("buyerUser");
		if(user==null) return "/account/login";
		return "/goods/checkout";
	}
	//下单
	@RequestMapping("/buyall")
	public String buyall(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("buyerUser");
		if(user==null) return "/account/login";
		logger.info(user.getName()+" buyall items");
		cartservice.inserDB(user.getName());
		cartservice.emptyCart(user.getName());
		return "/goods/buyseccess";
	}

}
