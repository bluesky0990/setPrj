package com.nellem.ipastel.admin.menu.service.impl;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.nellem.ipastel.admin.menu.service.MenuMgrService;

@Service("MenuMgrService")
public class MenuMgrServiceImpl implements MenuMgrService {
	
	@Inject
	MenuMgrMapper mapper;

	@Override
	public HashMap selectMenuListAll() throws Exception {
		return mapper.selectMenuListAll();
	}

}
