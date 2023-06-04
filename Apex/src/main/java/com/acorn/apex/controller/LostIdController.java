package com.acorn.apex.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.acorn.apex.service.LostIdService;

@Controller
public class LostIdController{
	
	@Autowired
	LostIdService service;
	
	@GetMapping("/lostid")
	public String lost(Model model) {
		return "lostid";
	}

	@PostMapping("/lostid2")
	public String lost2(Model model, HttpServletRequest request) {
		
		String name = request.getParameter("name_input");
		String emali = request.getParameter("email_input");
		
		String id = service.lostid(name, emali);
		model.addAttribute("findid", id);
		
		return "lostid2";
		
	}
}
