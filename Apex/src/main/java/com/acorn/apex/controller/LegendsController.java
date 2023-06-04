package com.acorn.apex.controller;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.apex.model.LegendsDTO;
import com.acorn.apex.service.LegendService;

@Controller
public class LegendsController {
	
	@Autowired
	LegendService service;

	@GetMapping("/legends")
	public String legends(Model model) {
		
		Map map=null;
		try {
			map = service.getAllLegendsId();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("map", map);
		
		return "legends";
		
	}
	
	@ResponseBody
	@GetMapping("/getlegend")
	public LegendsDTO getlegend(String id) {
		
		LegendsDTO legend=service.getLegend(id);
		
		return legend;
	}
	
}
