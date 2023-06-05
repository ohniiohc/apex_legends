package com.acorn.Apex.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.acorn.Apex.Dao.LoginDao;

@Component
public class LoginService {
	
	@Autowired
	LoginDao dao;
	
	public boolean Login(String id, String pw) {
		
		return dao.Login(id, pw);
	}

}
