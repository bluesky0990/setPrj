package com.nellem.ipastel.menu.service;

import java.util.HashMap;

public interface MenuService {
	public HashMap selectMenuList() throws Exception;
	public HashMap selectMenuListByAuth(HashMap map) throws Exception;
	public HashMap getSubMenuByCode(String code) throws Exception;
}
