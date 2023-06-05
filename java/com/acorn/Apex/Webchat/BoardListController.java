package com.acorn.Apex.Webchat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardListController {

    @Autowired
    private BoardListDAO boardListDAO;

    @GetMapping("/boardList")
    public String getBoardList(Model model) {
        List<boardlistDTO> boardList = boardListDAO.getBoardList();
        model.addAttribute("boardList", boardList);
        return "boardList";
    }
}
