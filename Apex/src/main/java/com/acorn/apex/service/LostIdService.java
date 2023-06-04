package com.acorn.apex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.acorn.apex.dao.LostIdDao;

@Component
public class LostIdService {
	
	@Autowired
	LostIdDao dao;
	
	public String lostid(String name, String email) {
		String id = null;
		id = dao.Lostid(name, email);
		return id;
	}

}
