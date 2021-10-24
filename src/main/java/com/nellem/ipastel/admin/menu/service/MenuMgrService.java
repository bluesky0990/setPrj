package com.nellem.ipastel.admin.menu.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface MenuMgrService {
	public HashMap<String, Object> selectOne(HashMap map) throws Exception;
	public List<Map<String, Object>> selectList() throws Exception;
}
