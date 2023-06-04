package com.acorn.apex.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.apex.model.MapsDTO;
import com.acorn.apex.service.MapService;

@Controller
public class MapsController {
	
	@Autowired
	MapService service;
	
	@GetMapping("/maps")
	public String maps(Model model) {
		ArrayList<String> list=service.getAllMapsId();
		model.addAttribute("list", list);
		return "maps";
	}

	@ResponseBody
	@GetMapping("/getmap")
	public MapsDTO getmap(String id) {
		MapsDTO map=service.getMap(id);
		return map;
	}
	
}
