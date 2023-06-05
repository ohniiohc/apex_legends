package com.acorn.Apex.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.acorn.Apex.Dao.MemberDao;
import com.acorn.Apex.Dto.MemberDto;

@Component
public class MemberService {
	
	@Autowired
	MemberDao dao;
	
	public void MemberReg(MemberDto member) {
		dao.MemberReg(member);
	}

}
