package com.nellem.ipastel.admin.menu.service.impl;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nellem.ipastel.admin.menu.service.MenuMgrService;

@Service("MenuMgrService")
public class MenuMgrServiceImpl implements MenuMgrService {
	
	@Autowired
	MenuMgrMapper mapper;

	@Override
	public List<Map<String, Object>> selectMenuListAll() throws Exception {
		return mapper.selectMenuListAll();
	}

}
