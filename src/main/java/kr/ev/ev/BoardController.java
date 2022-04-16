package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.BoardMapper;
import kr.ev.model.BoardVO;


@Controller
public class BoardController {
	
	
	@Inject
	private BoardMapper mapper;

	@RequestMapping("/board.do")
	public void showBoard(Model model) {
		System.out.println("게시판 보기");
		List<BoardVO> list = mapper.showBoard();
		model.addAttribute("list", list);

	}
	
	@RequestMapping("/board_writing_form.do")
	public void boardInsertForm() {
		System.out.println("글 작성 기능");
	}
	
	@RequestMapping("/boardInsert.do")
	public void boardInsert() {
		System.out.println("글 작성 후 입력");
	}


}


