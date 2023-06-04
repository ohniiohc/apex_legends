package com.acorn.apex.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.acorn.apex.service.LostPwService;

@Controller
public class LostPwController{
	
	@Autowired
	LostPwService service;
	
	@GetMapping("/lostpw")
	public String lost(Model model) {
		return "lostpw";
	}
	
	@PostMapping("/lostpw2")
	public String lost2(Model model, HttpServletRequest request) {
		
		String id = request.getParameter("name_input");
		String emali = request.getParameter("id_input");
		
		String pw = service.lostid(id, emali);
		model.addAttribute("findpw", pw);
		
		return "lostpw2";
	}
	
	

	
}
