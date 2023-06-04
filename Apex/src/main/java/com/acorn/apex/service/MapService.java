package com.acorn.apex.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.acorn.apex.dao.MapsDAO;
import com.acorn.apex.model.MapsDTO;

@Component
public class MapService {
	
	@Autowired
	MapsDAO dao;
	
	public ArrayList<String> getAllMapsId(){
		ArrayList<String> list=dao.selectAllMapsId();
		return list;
	}
	
	public MapsDTO getMap(String id) {
		MapsDTO map=dao.selectMap(id);
		return map;
	}
}
