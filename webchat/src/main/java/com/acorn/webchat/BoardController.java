package com.acorn.webchat;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {
    @GetMapping("/board")
    public String showBoard(Model model) {
        Board board = new Board();
        board.setTitle("Sample Title");
        board.setContent("Sample Content");
        board.setImage("sample.jpg");

        model.addAttribute("board", board);

        return "board";
    }
}
