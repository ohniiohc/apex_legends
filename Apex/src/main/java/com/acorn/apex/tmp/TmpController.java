package com.acorn.apex.tmp;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public String tmp_recommend(HttpServletRequest request,String b_id){
		HttpSession session=request.getSession();
		String u_id=(String)session.getAttribute("session_u_id");
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
	public ArrayList<CommentDTO> tmp_comment(HttpServletRequest request,String c_con,String b_id){
		HttpSession session=request.getSession();
		String u_id=(String)session.getAttribute("session_u_id");
		dao.insertcomment(c_con, u_id, b_id);
		ArrayList<CommentDTO> colist=dao.selectcomment(b_id);
		return colist;	
	}

	@PostMapping("/tmp_login")
	public String tmp_login(HttpServletRequest request,String log_u_id) {
		System.out.println(log_u_id);
		HttpSession session=request.getSession();
		session.setAttribute("session_u_id", log_u_id);
		return "redirect:/tmp_index";
	}
	
	@GetMapping("/tmp_logout")
	public String tmp_login(HttpServletRequest request) {
		HttpSession session=request.getSession();
		session.invalidate();
		return "redirect:/tmp_index";
	}
	
	@ResponseBody
	@GetMapping("/tmp_delcomment")
	public ArrayList<CommentDTO> tmp_delcomment(String b_id,String c_id){
		dao.delcomment(c_id);
		ArrayList<CommentDTO> colist=dao.selectcomment(b_id);
		return colist;
	}
	
	
}
