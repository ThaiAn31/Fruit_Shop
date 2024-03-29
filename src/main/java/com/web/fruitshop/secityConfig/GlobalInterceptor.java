package com.web.fruitshop.secityConfig;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.web.fruitshop.service.CategoryService;


@Component
public class GlobalInterceptor implements HandlerInterceptor{
	@Autowired
    CategoryService categoryService;
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) {
		request.setAttribute("cates", categoryService.findAll());
	}
}
