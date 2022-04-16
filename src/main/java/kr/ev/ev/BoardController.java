package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ev.model.BoardMapper;
import kr.ev.model.BoardVO;
import kr.ev.model.MemberVO;


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
	public String boardInsert(BoardVO vo, HttpSession session) {
		System.out.println("글 작성 후 입력");
		mapper.boardInsert(vo);
		MemberVO infor = (MemberVO)session.getAttribute("info");
		String infoNick = infor.getM_nick();
		System.out.println("닉네임 : " + infoNick);
		return "redirect:/fileUpload.do";
	}


}


