package com.acorn.apex.Controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.apex.Model.LegendsDAO;
import com.acorn.apex.Model.LegendsDTO;

@Controller
public class LegendsController {
	
	@Autowired
	LegendsDAO dao;

	@GetMapping("/legends")
	public String legends(Model model) {
		
		Map map=null;
		try {
			map = dao.selectAllLegendsId();
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
		
		LegendsDTO legend=dao.selectLegend(id);
		
		return legend;
	}
	
}
