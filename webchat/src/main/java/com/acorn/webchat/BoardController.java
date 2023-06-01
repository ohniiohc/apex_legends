package com.acorn.webchat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {
	
	@Autowired
	BoardDAO  boardDAO;
	
	
    @GetMapping("/board")
    public String showBoard(Model model) {
        Board board = new Board();
        board.setTitle("Sample Title");
        board.setContent("Sample Content");
        board.setImage("sample.jpg");

        
        Board  realBoard  = boardDAO.getBoardById(1l) ;      // model.addAttribute("board", board);
        System.out.println(realBoard) ;
        
        model.addAttribute("board", realBoard);

        return "board";
    }
}
