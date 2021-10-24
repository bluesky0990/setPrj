package com.nellem.ipastel.admin.menu.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nellem.ipastel.admin.menu.service.MenuMgrService;

@Controller
@RequestMapping(value="/admin/menu")
public class MenuMgrController {
	private static final Logger logger = LoggerFactory.getLogger(MenuMgrController.class);
	
	@Autowired
	MenuMgrService service;

	@RequestMapping(value = "/menuMgr.do")
	public String AdminMenuList(Model model) throws Exception {
		
		
		model.addAttribute("data", model);
		
		return "admin/menu/menuMgr";
	}
	
	@RequestMapping(value = "menuList.json")
	@ResponseBody
	public List<Map<String, Object>> MenuListJSON() throws Exception {
		return service.selectList();
	}
	
	@RequestMapping(value = "menu.json")
	@ResponseBody
	public Map<String, Object> MenuJSON(HashMap map) throws Exception {
		return service.selectOne(map);
	}
}
