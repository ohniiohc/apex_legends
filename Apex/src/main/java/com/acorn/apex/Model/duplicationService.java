package com.acorn.apex.Model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class duplicationService {
	
	@Autowired
	DuplicationDao dao;
	
	public boolean Duplication(String id) {
		return dao.duplication_id(id);
	}

}
