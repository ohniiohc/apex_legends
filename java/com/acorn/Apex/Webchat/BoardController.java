package com.acorn.Apex.Webchat;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {
	
	@Autowired
	BoardDAO  boardDAO;
	
	
    @GetMapping("/board")
    public String showBoard(Model model,long id) {
        Board board = new Board();
        board.setTitle("Sample Title");
        board.setContent("Sample Content");
        board.setId("Sample ID");
        board.setPostId("Post ID");
        board.setUp(10);
        board.setViews(100);
        board.setWriteDate(new Date());
        
     

        
        Board  realBoard  = boardDAO.getBoardById(id) ;      // model.addAttribute("board", board);
        System.out.println(realBoard) ;
        
        model.addAttribute("board", realBoard);

        return "board";
    }
}
