package com.nellem.controller.admin;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@RequestMapping(value = "/login.do")
	public String AdminLogin(Model model) {
		
		
		model.addAttribute("data", model);
		
		return "admin/login";
	}

	@RequestMapping(value = "/main.do")
	public String AdminMain(Model model) {
		
		
		model.addAttribute("data", model);
		
		return "admin/main";
	}
	
	@RequestMapping(value = "/menu/menuMgr.do")
	public String AdminMenuList(Model model) {
		
		
		model.addAttribute("data", model);
		
		return "admin/menu/menuMgr";
	}
}