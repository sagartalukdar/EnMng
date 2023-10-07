package com.spmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import com.spmvc.entity.User;

public class AuthInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		User u=(User) request.getSession().getAttribute("logeduser");
		if(u!=null) {
			return true;
		}else {
			
			response.getWriter().print("please Login first");
			return false;
		}
	}

}
