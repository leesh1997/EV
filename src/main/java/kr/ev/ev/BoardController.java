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
		System.out.println("게시판");
	}

}
