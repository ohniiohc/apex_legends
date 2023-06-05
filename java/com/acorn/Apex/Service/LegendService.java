package com.acorn.Apex.Service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.acorn.Apex.Dao.LegendsDAO;
import com.acorn.Apex.Dto.LegendsDTO;



@Component
public class LegendService {
	
	@Autowired
	LegendsDAO dao;

	public Map<String, ArrayList<String>> getAllLegendsId() throws SQLException {
		Map map = dao.selectAllLegendsId();
		return map;
	}
	
	public LegendsDTO getLegend(String id) {
		LegendsDTO legend=dao.selectLegend(id);
		return legend;
	}
}
