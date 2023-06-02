package com.acorn.apex.Controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.acorn.apex.Model.ApexApi;
import com.acorn.apex.Model.ApexApiDto;

@Controller
public class ApiController {

	@Autowired
	ApexApi apexApi;
	
	@GetMapping("/getPlayerInfo")
	public String getPlayerInfo(@RequestParam("name") String name, Model model) {
		String playerInfo = apexApi.getPlayerInfo(name);
		ArrayList<ApexApiDto> apexApiDto = apexApi.matchdto(playerInfo); // 결과를 변수에 할당

		model.addAttribute("playerInfo", apexApiDto); // 모델에 변수를 추가

		return "api";
	}
}
