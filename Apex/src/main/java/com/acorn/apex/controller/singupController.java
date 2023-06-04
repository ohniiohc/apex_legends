package com.acorn.apex.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.acorn.apex.model.MemberDto;
import com.acorn.apex.service.MemberService;

@Controller
public class singupController{
	
	@Autowired
	MemberService service;
	
	@GetMapping("/signup")
	public String singup(Model model) {
		return "signup";
	}
	
	@PostMapping("/signup2")
	public String singup2(Model model, HttpServletRequest request) {
		
		String NAME = request.getParameter("name_put");
		String ID = request.getParameter("id_put");
		String PW = request.getParameter("pw_put");
		String PW_check = request.getParameter("pw_check");
		String EMAIL = request.getParameter("email");
		String SEX = request.getParameter("gender"); 	
		
		if(PW.equals(PW_check)) {
			MemberDto member = new MemberDto(NAME,ID,PW,EMAIL,SEX);
			service.MemberReg(member);
			String userNumber = member.getUser_number(); // 시퀀스 번호 가져오기
	        System.out.println("회원 가입 완료. 시퀀스 번호: " + userNumber);
	        model.addAttribute("userNumber", userNumber);
			return "login";
			
		}else {
			System.out.println("다릅니다");
			return "signup";
		}
	}
}
