package com.acorn.Apex.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.acorn.Apex.Dto.Board_WritingDto;
import com.acorn.Apex.Service.Border_WritingService;

@Controller
public class BoardWritingController {
	
	@Autowired
	Border_WritingService service;
	
	@Autowired
	HttpSession session;
	
	@GetMapping("/board_writing")
	public String board_writing() {
		return "board_writing";
	}
	
	@PostMapping("/board_writing2")
	public String board_writing2(Model model, HttpServletRequest request) {
		
		String title = request.getParameter("post-title");
		String content = request.getParameter("post-content");
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("ID");
		
		
		
		System.out.println(title);
		System.out.println(content);
		System.out.println(id);
		
		Board_WritingDto board = new Board_WritingDto(title, content, id);
		service.Writing(title, content, id);
		
		return "board_writing";
	}
	
}
