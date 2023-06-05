package com.acorn.Apex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardindexController {

	@GetMapping("/boardindex")
	public String method() {

		return "boardindex";
	}

}
