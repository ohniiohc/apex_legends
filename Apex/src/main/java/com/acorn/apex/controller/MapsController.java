package com.acorn.apex.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.apex.dao.MapsDAO;
import com.acorn.apex.model.MapsDTO;

@Controller
public class MapsController {
	
	@Autowired
	MapsDAO dao;
	
	@GetMapping("/maps")
	public String maps(Model model) {
		ArrayList<String> list=dao.selectAllMapsId();
		model.addAttribute("list", list);
		return "maps";
	}

	@ResponseBody
	@GetMapping("/getmap")
	public MapsDTO getmap(String id) {
		MapsDTO map=dao.selectMap(id);
		return map;
	}
	
}
