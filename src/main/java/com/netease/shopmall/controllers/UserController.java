package com.netease.shopmall.controllers;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.netease.shopmall.entities.User;
import com.netease.shopmall.services.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	UserService userService;
	
	@RequestMapping("/login")
	public String login() {
		return "account/login";
	}
	
	@RequestMapping("/checkLogin")
	public String checkLogin(Model model,User user,RedirectAttributes redirectAttributes,HttpServletRequest request) {
		if(userService.checkLogin(user)) {
			HttpSession session = request.getSession();
			session.setAttribute("user",user);
			//卖家登录
			if(user.getFlag()==1) {
				return "redirect:/goods/list";
			}
			else return "redirect:/goods/index";
		}
		else {
			redirectAttributes.addFlashAttribute("message", "用户名密码错误!");
			return "redirect:/user/login";
		}
		
	}

}