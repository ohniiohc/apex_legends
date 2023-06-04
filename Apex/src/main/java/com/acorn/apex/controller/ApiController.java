package com.acorn.apex.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.acorn.apex.model.ApexApiDto;
import com.acorn.apex.service.ApiService;

@Controller
public class ApiController {
	
	@Autowired
	ApiService service;

	@GetMapping("/getPlayerInfo")
	public String getPlayerInfo(@RequestParam("name") String name, Model model) {
		String playerInfo = service.getPlayerInfo(name);
		ArrayList<ApexApiDto> apexApiDto = service.matchdto(playerInfo); // 결과를 변수에 할당

		model.addAttribute("playerInfo", apexApiDto); // 모델에 변수를 추가

		return "api";
	}
	
}
