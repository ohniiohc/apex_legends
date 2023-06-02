package com.acorn.apex.Model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LostPwService {
	
	@Autowired
	LostPwDao dao;
	
	public String lostid(String id, String email) {
		String pw = null;
		pw = dao.LostPw(id, email);
		return pw;
	}

}
