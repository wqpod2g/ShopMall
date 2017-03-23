package com.netease.shopmall.controllers;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.netease.shopmall.entities.Goods;
import com.netease.shopmall.entities.User;
import com.netease.shopmall.services.CartService;
import com.netease.shopmall.services.GoodsService;
import com.netease.shopmall.utils.CommonUtil;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	
	
	@Resource
	GoodsService goodsService;
	
	@Resource
	CartService cartservice;
	
	/*
	 * 首页展示
	 */
	@RequestMapping("/index")
	public String index(Model model,HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("buyerUser");
		if(user!=null) {
			model.addAttribute("buyerName",user.getName());
			model.addAttribute("simpleCart_items",cartservice.getAllItem(user.getName()));
		}
		else {
			model.addAttribute("buyerName","");
		}
		model.addAttribute("goods", goodsService.getAllGoods());
		return "/goods/index";
	}
	
	/*
	 * 产品列表与分页Action
	 */
	@RequestMapping("/list")
	public String list(Model model,@RequestParam(required=false,defaultValue="1") int pageNO,HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("sellerUser");
		if(user!=null) {
			model.addAttribute("sellerName",user.getName());
			int size=10;
			model.addAttribute("size",size);
			model.addAttribute("pageNO",pageNO);
			model.addAttribute("count",goodsService.getGoodsCount());
			model.addAttribute("goods", goodsService.getGoodsPager(pageNO, size));
			return "goods/list";
		}
		else {
			return "/account/login";
		}
	}
	
	
	/*
	 * 删除单个产品对象Action
	 */
	@RequestMapping("/delete/{id}")
	public String delete(Model model,@PathVariable int id,@RequestParam(required=false,defaultValue="1") int pageNO,RedirectAttributes redirectAttributes){
		if(goodsService.delete(id)>0)
		{
			redirectAttributes.addFlashAttribute("message", "删除成功！");
		}else{
			redirectAttributes.addFlashAttribute("message", "删除失败！");
		}
		return "redirect:/goods/list?pageNO="+pageNO;
	}
	
	/*
	 * 删除多个产品对象Action
	 */
	@RequestMapping("/deletes")
	public String deletes(Model model,@RequestParam(required=false) int[] id,@RequestParam(required=false,defaultValue="1") int pageNO,RedirectAttributes redirectAttributes){
		if(id!=null) {
			//执行删除
			int rows=goodsService.deletes(id);
			if(rows>0)
			{
				redirectAttributes.addFlashAttribute("message", "删除"+rows+"行记录成功！");
			}else{
				redirectAttributes.addFlashAttribute("message", "删除失败！");
			}
		}
		return "redirect:/goods/list?pageNO="+pageNO;
	}
	
	/*
	 * 添加商品
	 */
	@RequestMapping("/add")
	public String add(Model model){
		model.addAttribute("entity", new Goods());
		return "/goods/add";
	}
	
	/*
	 * 添加商品保存
	 */
	@RequestMapping("/addSave")
	public String addSave(Model model,@ModelAttribute("entity") @Valid Goods entity,BindingResult bindingResult,MultipartFile picFile,HttpServletRequest request){
		String path=request.getServletContext().getRealPath("/images");
		String filename = CommonUtil.savePic(picFile, path);
		if(filename!=null) {
			entity.setPicture(filename);
		}
		//如果模型中存在错误
		if(!bindingResult.hasErrors()||filename!=null){
			entity.setPicture(filename);
			if(goodsService.insert(entity)>0)
			{
				return "redirect:/goods/list";	
			}
		}
		model.addAttribute("entity", entity);
		return "/goods/add";
	}
	
	/*
	 * 编辑商品
	 */
	@RequestMapping("/edit/{id}")
	public String edit(Model model,@PathVariable int id){
		model.addAttribute("entity", goodsService.getGoodsById(id));
		return "/goods/edit";
	}
	
	/*
	 * 编辑商品保存
	 */
	@RequestMapping("/editSave")
	public String editSave(Model model,@ModelAttribute("entity") @Valid Goods entity,BindingResult bindingResult){
		//如果模型中存在错误
		if(!bindingResult.hasErrors()){
			if(goodsService.update(entity)>0)
			{
				return "redirect:/goods/list";	
			}
		}
		model.addAttribute("entity", entity);
		return "/goods/edit";
	}
	
	/**
	 * 上传图片
	 */
	@RequestMapping("/upPicture/{id}")
	public String upPicture(Model model,@PathVariable int id){
		model.addAttribute("entity", goodsService.getGoodsById(id));
		return "/goods/upfile";
	}
	
	/*
	 * 上传图片保存
	 */
	@RequestMapping("/upPictureSave/{id}")
	public String upPictureSave(Model model,@PathVariable int id,MultipartFile picFile,HttpServletRequest request){
		Goods entity=goodsService.getGoodsById(id);
		String path=request.getServletContext().getRealPath("/images");
		String filename = CommonUtil.savePic(picFile, path);
		if(filename!=null) {
			entity.setPicture(filename);
			goodsService.update(entity);
			//转向列表页
			return "redirect:/goods/list";	
		}
		model.addAttribute("entity", entity);
		return "/goods/upfile";
	}
	
	@RequestMapping("/single/{id}")
	public String goodsDetail(Model model,@PathVariable int id,HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("buyerUser");
		if(user!=null) {
			model.addAttribute("buyerName",user.getName());
		}
		else {
			model.addAttribute("buyerName","");
		}
		Goods entity = goodsService.getGoodsById(id);
		model.addAttribute("entity", entity);
		return "/goods/single";
	}
	
}
