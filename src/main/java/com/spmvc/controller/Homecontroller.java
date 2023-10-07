package com.spmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spmvc.dao.Userdao;
import com.spmvc.entity.Note;
import com.spmvc.entity.User;

@Controller
public class Homecontroller {

	@Autowired
	private Userdao ud;
	
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping(path = "/userregister",method = RequestMethod.POST)
	public String Userregister(@ModelAttribute User u,HttpSession hs) {
		ud.saveUser(u);
		hs.setAttribute("msg", "User Successfully Registered");
		return "redirect:/register";
	}
	@RequestMapping(path = "/ulog",method = RequestMethod.POST)
	public String afterlogin(@RequestParam("email")String e,@RequestParam("password")String p,HttpSession hs) {
	  User u=ud.loguser(e, p);
	  if(u!=null) {
		  hs.setAttribute("logeduser", u);
		  return "redirect:/home";
	  }else {
		  hs.setAttribute("msg", "wrong email/password");
		  return "redirect:/login";
	  }
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req) {
		HttpSession hs=req.getSession();
		hs.removeAttribute("logeduser");
		hs.setAttribute("msg", "User Loged Out !");
		return "redirect:/home";
	}
	

}
