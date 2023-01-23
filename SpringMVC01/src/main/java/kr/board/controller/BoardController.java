package kr.board.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.board.entity.Board;
import kr.board.mapper.BoardMapper;

@Controller
public class BoardController {
	
	@Autowired
	private BoardMapper mapper;
	// /boardList.do 게시판리스트 보여줘
	// HandlerMapping 밑의 요청이 왔을 때 메서드 연결
	@RequestMapping("/boardList.do")	
	
	public String boardList(Model model) {
		
		List<Board> list=mapper.getLists();		
		model.addAttribute("list",list);
		return "boardList"; // WEB-INF/views/boardList.jsp-> forward(포워딩)
	}
	@GetMapping("/boardForm.do")
	public String boardForm() {
		return "boardForm"; // WEB-INF/views/boardList.jsp-> forward(포워딩)
	}
	@PostMapping ("/boardInsert.do")
	public String boardInsert(Board vo) { // title,content,writer->파리미터수집(Board)
		mapper.boardInsert(vo); //
		return "redirect://boardList.do"; // 리다이렉트
	}
}
