package com.acorn.Apex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.acorn.Apex.Service.duplicationService;

@RestController
public class DuplicationController {

	@Autowired
	duplicationService service;

	@PostMapping("/check_duplication")
	public Boolean checkDuplication(String id) {

		boolean isDuplicated = service.Duplication(id);
		return isDuplicated;
	}
}
