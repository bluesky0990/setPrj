package com.nellem.ipastel.admin.menu.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nellem.ipastel.admin.menu.service.MenuMgrService;

@Service("MenuMgrService")
public class MenuMgrServiceImpl implements MenuMgrService {
	
	@Autowired
	MenuMgrMapper mapper;
	
	@Override
	public HashMap<String, Object> selectOne(HashMap map) throws Exception {
		return mapper.selectOne(map);
	}

	@Override
	public List<Map<String, Object>> selectList() throws Exception {
		return mapper.selectList();
	}
}
