package com.acorn.Apex.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.acorn.Apex.Dao.DuplicationDao;

@Component
public class duplicationService {
	
	@Autowired
	DuplicationDao dao;
	
	public boolean Duplication(String id) {
		return dao.duplication_id(id);
	}

}
