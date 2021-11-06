package com.nellem.ipastel.menu.web;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MenuController {
	
	private static final Logger logger = LoggerFactory.getLogger(MenuController.class);
	
	@RequestMapping(value = "/menu/menuList.do", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {
		ModelAndView mv = new ModelAndView("jsonView");
		
		return mv;
	}
}
