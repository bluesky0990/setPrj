package com.nellem.ipastel.menu.service.impl;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;

@Mapper
public interface MenuMapper {
	public HashMap selectMenuList() throws DataAccessException;
	public HashMap selectMenuListByAuth(HashMap map) throws DataAccessException;
}
