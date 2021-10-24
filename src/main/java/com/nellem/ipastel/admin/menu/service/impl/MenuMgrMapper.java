package com.nellem.ipastel.admin.menu.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;

@Mapper
public interface MenuMgrMapper {
	public HashMap<String, Object> selectOne(HashMap map) throws DataAccessException;
	public List<Map<String, Object>> selectList() throws DataAccessException;
}
