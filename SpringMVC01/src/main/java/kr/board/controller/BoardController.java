package kr.board.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	   @GetMapping("/boardContent.do")
	   public String boardContent(@RequestParam("idx") int idx, Model model) { //?idx=값
	      Board vo=mapper.boardContent(idx);
	      //조회수 증가
	      mapper.boardCount(idx);
	      model.addAttribute("vo", vo);
	      return "boardContent"; //jsp
	   }
	   @GetMapping("/boardDelete.do/{idx}")
	   public String boardDelete(@PathVariable("idx")int idx) { // ?idx=6
		   mapper.boardDelete(idx);
		   return "redirect:/boardList.do";
	   }
	   @GetMapping("/boardUpdateForm.do/{idx}")
	   public String boardUpdateForm(@PathVariable("idx")int idx,Model model) {
		   Board vo = mapper.boardContent(idx);
		   model.addAttribute("vo",vo);
		   return "boardUpdate"; //boardUpdate.jsp
	   }

	   @PostMapping("/boardUpdate.do")
	   public String boardUpdate(Board vo) { // idx,title,content
		   mapper.boardUpdate(vo); // 수정
		   return "redirect:/boardList.do"; 
	   }
}
