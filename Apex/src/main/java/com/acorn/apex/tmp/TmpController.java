package com.acorn.apex.tmp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TmpController {
	
	@Autowired
	TmpDAO dao;
	
	@GetMapping("/tmp_index")
	public String tmp_index(Model model) {
		ArrayList<BoardDTO> list=dao.selectList();
		model.addAttribute("list", list);
		return "tmp_index";
	}
	
	@GetMapping("/tmp_board")
	public String tmp_board(Model model,String b_id) {
		BoardDTO board=dao.selectboard(b_id);
		model.addAttribute("board", board);
		ArrayList<CommentDTO> colist=dao.selectcomment(b_id);
		model.addAttribute("colist", colist);
		return "tmp_board";
	}
	
		
	@ResponseBody
	@GetMapping("/tmp_recommend")
	public String tmp_recommend(String b_id,String u_id){
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
	public ArrayList<CommentDTO> tmp_comment(String c_con,String u_id,String b_id){
		dao.insertcomment(c_con, u_id, b_id);
		ArrayList<CommentDTO> colist=dao.selectcomment(b_id);
		return colist;	
	}

}
