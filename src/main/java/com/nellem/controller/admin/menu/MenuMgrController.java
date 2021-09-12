package com.nellem.controller.admin.menu;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/admin/menu")
public class MenuMgrController {
	
	private static final Logger logger = LoggerFactory.getLogger(MenuMgrController.class);

	@RequestMapping(value = "/menuMgr.do")
	public String AdminMenuList(Model model) {
		
		
		model.addAttribute("data", model);
		
		return "admin/menu/menuMgr";
	}
}
