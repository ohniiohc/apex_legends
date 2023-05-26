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
	public void method() {
		
	}

	@GetMapping("/legends2")
	public String method2(Model model) {
		
		Map map=null;
		try {
			map = dao.selectAllLegends();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("map", map);
		
		return "legends2";
		
	}
	
	@ResponseBody
	@GetMapping("/legends3")
	public LegendsDTO method2(String id) {
		
		
		return null;
	}
	
}
