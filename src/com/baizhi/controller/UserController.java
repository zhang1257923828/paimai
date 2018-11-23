package com.baizhi.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping("/log")
	public String log(HttpSession session,User user,String kaptcha){
		String sessionkaptcha=(String) session.getAttribute("kaptcha");
		user=userService.login(user.getUser_name(), user.getUser_password());
		if(user!=null&&sessionkaptcha.equalsIgnoreCase(kaptcha)){
			session.setAttribute("user", user);
			return "redirect:/selectAll.do";
		}else{
			return "login";
		}
		
		
	}
	@RequestMapping("/reg")
	public String reg(User user,HttpSession session,String kaptcha){
		String sessionkaptcha=(String) session.getAttribute("kaptcha");
		
		if(sessionkaptcha.equalsIgnoreCase(kaptcha)){
			userService.reg(user);
			
			return "login";
		}else{
			return "regist";
		}
		
		
	}
	//×¢Ïú
	@RequestMapping("/remove")
		public String remove(HttpSession session){
			session.removeAttribute("user");
			return "login";
			
		}
}
