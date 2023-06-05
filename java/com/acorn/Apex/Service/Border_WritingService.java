package com.acorn.Apex.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.acorn.Apex.Dao.Board_WritingDao;
import com.acorn.Apex.Dto.Board_WritingDto;

@Component
public class Border_WritingService {

	@Autowired
	Board_WritingDao dao;

	public boolean Writing(String title, String content, String id) {
		Board_WritingDto writing = new Board_WritingDto(title, content, id);
		return dao.writing(writing);

	}

}
