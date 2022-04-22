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
	public void showBoard(Model model, HttpServletRequest request) {
		System.out.println("게시판 보기");
		List<BoardVO> list = mapper.showBoard();
		System.out.println(list);
		System.out.println(list.get(0).getB_file());
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
		return "vo";
	}

	/*
	 * // 게시판 내용
	 * 
	 * @RequestMapping("/boardContent.do") public String boardContent(Model model) {
	 * model. }
	 */
	
	@RequestMapping("/boardSelect.do")
	public String boardSelect(@RequestParam("img_url") String img_url, Model model) {
		
		System.out.println("보드 셀렉트 접근");
		System.out.println(img_url);
		BoardVO vovo = mapper.showDetailBoard(img_url);
		/* List<BoardVO> coList = mapper.showDetailBoard(img_url); */
		System.out.println("데이터 : " + vovo);
		model.addAttribute("vovo", vovo);
		System.out.println("성공했나");
		
		return "redirect:/board.do";
	}
	
}


