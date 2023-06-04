package com.acorn.apex.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.acorn.apex.service.LoginService;
import com.acorn.apex.service.duplicationService;
 

@Controller
public class loginController {

	@Autowired
	LoginService loginservice;
	@Autowired
	duplicationService duplicationservice;

	@GetMapping("/login")
	public String login() {
		return "login";
	}

	@PostMapping("/login2")
	public String login(HttpServletRequest request  , Model model ) {
		
		String ID = request.getParameter("id_put");
		String PW = request.getParameter("pw_put");		
		
		System.out.println(ID);
		System.out.println(PW);
		

		boolean isDuplicated = duplicationservice.Duplication(ID);
		if (!isDuplicated) {  //아이디가중복되면 실패
			System.out.println("로그인 실패");			
			model.addAttribute("idfalse", "아이디가 없습니다!!");
			return "login";
		}

		boolean isAuthenticated = loginservice.Login(ID, PW);
		if (isAuthenticated) {
			System.out.println("로그인 성공");
			model.addAttribute("loginsuccess", "로그인되었습니다!!");
			HttpSession session = request.getSession();
			session.setAttribute("ID", ID);
			return "board_writing";
		} else {
			System.out.println("로그인 실패");			
			model.addAttribute("loginfalse", "비밀번호가 틀렸습니다!!");
			return "login";
		}
	}

	
	

}
