package com.netease.shopmall.controllers;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.netease.shopmall.entities.User;
import com.netease.shopmall.services.CartService;
import com.netease.shopmall.services.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Resource
	UserService userService;
	
	@Resource
	CartService cartservice;
	
	@RequestMapping("/login")
	public String login() {
		return "account/login";
	}
	
	@RequestMapping("/checkLogin")
	public String checkLogin(Model model,User user,RedirectAttributes redirectAttributes,HttpServletRequest request) {
		if(userService.checkLogin(user)) {
			logger.info("用户 "+user.getName()+" 登录");
			HttpSession session = request.getSession();
			//卖家登录
			if(user.getFlag()==1) {
				session.setAttribute("sellerUser",user);
				return "redirect:/goods/list";
			}
			else {
				session.setAttribute("buyerUser",user);
				return "redirect:/goods/index";
			}
		}
		else {
			redirectAttributes.addFlashAttribute("message", "用户名密码错误!");
			return "redirect:/user/login";
		}
	}
	
	@RequestMapping("/loginout")
	public String loginOut(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("buyerUser", null);
		session.setAttribute("sellerUser", null);
		return "redirect:/goods/index";
	}
	
	@RequestMapping("/checkbill")
	public String checkbill(Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("buyerUser");
		if(user==null) return "/account/login";
		model.addAttribute("orders", cartservice.getAllOrders(user.getName()));
		return "/goods/bill";
	}

}
