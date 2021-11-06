package com.nellem.ipastel.menu.service.impl;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nellem.ipastel.menu.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	MenuMapper mapper;

	@Override
	public HashMap selectMenuList() throws Exception {
		return mapper.selectMenuList();
	}

	@Override
	public HashMap selectMenuListByAuth(HashMap map) throws Exception {
		return mapper.selectMenuListByAuth(map);
	}

	@Override
	public HashMap getSubMenuByCode(String code) throws Exception {
		HashMap selectList = mapper.selectMenuList();
		HashMap menuList = new HashMap();
		for(int i = 0; i < selectList.size(); i++) {
			
		}
		return null;
	}
}
