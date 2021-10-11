package com.nellem.controller.admin.menu.service.impl;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.nellem.controller.admin.menu.service.MenuMgrService;

@Service
public class MenuMgrServiceImpl implements MenuMgrService {
	
	@Inject
	MenuMgrMapper mapper;

	@Override
	public HashMap selectMenuListAll() throws Exception {
		return mapper.selectMenuListAll();
	}

}
