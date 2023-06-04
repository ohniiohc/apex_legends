package com.acorn.apex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.acorn.apex.dao.DuplicationDao;

@Component
public class duplicationService {
	
	@Autowired
	DuplicationDao dao;
	
	public boolean Duplication(String id) {
		return dao.duplication_id(id);
	}

}
