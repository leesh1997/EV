package kr.ev.ev;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.MemberMapper;

@Controller
public class BoardController {
	@Inject
	private MemberMapper mapper;

	@RequestMapping("/board.do")
	public void showBoard() {
		System.out.println("게시판 보기");
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
