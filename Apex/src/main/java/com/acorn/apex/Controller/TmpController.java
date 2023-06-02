package com.acorn.apex.Controller;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.acorn.apex.Model.TmpCommentDTO;
import com.acorn.apex.Model.TmpDAO;
import com.acorn.apex.Model.TmpDTO;

@Controller
public class TmpController {
	
	@Autowired
	TmpDAO dao;
	
	@GetMapping("/tmp_main")
	public String tmpindex(Model model) {
		ArrayList<TmpDTO> list=dao.selectList();
		model.addAttribute("list", list);
		return "tmp_main";
	}
	
	@GetMapping("/tmp_board")
	public String tmpboard(Model model,String b_id) {
		TmpDTO board=dao.selectboard(b_id);
		model.addAttribute("board", board);
		ArrayList<TmpCommentDTO> colist=dao.selectcomment(b_id);
		model.addAttribute("colist", colist);
		return "tmp_board";
	}
	
		
	@ResponseBody
	@GetMapping("/tmp_recommend")
	public String tmprecommend(String b_id,String u_id){
		System.out.println(b_id);
		System.out.println(u_id);
		String r_cnt="duplicates";
		boolean check=dao.checkreco(b_id, u_id);
		System.out.println(check);
		if(check) {
			dao.insertrecommend(b_id, u_id);
			r_cnt=dao.selectr_cnt(b_id);
		}
		
		System.out.println(r_cnt);
		return r_cnt;	
	}
	
	@ResponseBody
	@GetMapping("/tmp_comment")
	public ArrayList<TmpCommentDTO> tmpcomment(String c_con,String u_id,String b_id){
		dao.insertcomment(c_con, u_id, b_id);
		ArrayList<TmpCommentDTO> colist=dao.selectcomment(b_id);
		return colist;	
	}

}
