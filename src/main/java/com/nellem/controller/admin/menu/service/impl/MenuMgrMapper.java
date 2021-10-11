package com.nellem.controller.admin.menu.service.impl;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;

@Mapper
public interface MenuMgrMapper {
	public HashMap selectMenuListAll() throws DataAccessException;
}
