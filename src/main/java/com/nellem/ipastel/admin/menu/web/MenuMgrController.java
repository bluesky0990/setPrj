package com.nellem.ipastel.admin.menu.web;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nellem.ipastel.admin.menu.service.MenuMgrService;

@Controller
@RequestMapping(value="/admin/menu")
public class MenuMgrController {
	private static final Logger logger = LoggerFactory.getLogger(MenuMgrController.class);
	
	@Resource(name="MenuMgrService")
	MenuMgrService service;

	@RequestMapping(value = "/menuMgr.do")
	public String AdminMenuList(Model model) throws Exception {
		
		
		model.addAttribute("data", model);
		
		return "admin/menu/menuMgr";
	}
	
	@RequestMapping(value = "menuList.json")
	@ResponseBody
	public HashMap MenuListJSON() throws Exception {
		return service.selectMenuListAll();
	}
}
