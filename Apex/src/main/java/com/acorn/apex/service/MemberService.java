package com.acorn.apex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.acorn.apex.dao.MemberDao;
import com.acorn.apex.model.MemberDto;

@Component
public class MemberService {
	
	@Autowired
	MemberDao dao;
	
	public void MemberReg(MemberDto member) {
		dao.MemberReg(member);
	}

}
