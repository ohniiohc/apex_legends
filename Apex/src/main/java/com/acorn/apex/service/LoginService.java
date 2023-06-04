package com.acorn.apex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.acorn.apex.dao.LoginDao;

@Component
public class LoginService {
	
	@Autowired
	LoginDao dao;
	
	public boolean Login(String id, String pw) {
		
		return dao.Login(id, pw);
	}

}
