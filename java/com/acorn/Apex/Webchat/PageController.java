package com.acorn.Apex.Webchat;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PageController {

    private final BoardDAO boardDAO = new BoardDAO();
    private final int pageSize = 5; // 페이지당 게시물 수

    @GetMapping("/page1")
    public String getPage(Model model, @RequestParam(defaultValue = "1") int page) {
       //대충 조회해오기
        List<Board> boards = boardDAO.getBoardsByPage(page, pageSize);

        //전체 페이지 계산때리기
        int totalPages = boardDAO.getTotalPages(pageSize);
 
        model.addAttribute("boards", boards);
        model.addAttribute("totalPages", totalPages);

        return "page";
    }
}

