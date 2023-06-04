package com.acorn.apex.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
 

@Controller
public class logoutController {


	@GetMapping("/logout")
	public String logout(  HttpServletRequest request ) {
		
		HttpSession session  =request.getSession();
		session.invalidate();		 
		return "board_writing";
	}

}
