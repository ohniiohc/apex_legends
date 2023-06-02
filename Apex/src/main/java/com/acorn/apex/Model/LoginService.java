package com.acorn.apex.Model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class LoginService {
	
	@Autowired
	LoginDao dao;
	
	public boolean Login(String id, String pw) {
		
		return dao.Login(id, pw);
	}

}
