package com.acorn.apex.Model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberService {
	
	@Autowired
	MemberDao dao;
	
	public void MemberReg(MemberDto member) {
		dao.MemberReg(member);
	}

}
