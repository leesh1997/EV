package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.sound.midi.MidiDevice.Info;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.BoardMapper;
import kr.ev.model.BoardVO;
import kr.ev.model.MemberVO;
import kr.ev.model.MypageMapper;
;


@Controller
public class MypageController {
	
	@Inject
	private MypageMapper mapper;
	private BoardMapper mapper2;
	
	
	@RequestMapping("/mypage.do")
	public String Mypage(Model model,HttpSession session) {
		System.out.println("마이페이지~!");
		System.out.println("나의 활동");
		MemberVO vo=(MemberVO) session.getAttribute("info");
		System.out.println(vo);
		int cnt=mapper.getBoardCnt(vo);
		model.addAttribute("count", cnt);
		System.out.println(cnt);
		

		String m_nick=vo.getM_nick();
		List<BoardVO>bvo=mapper.myContent(vo);
		model.addAttribute("myContent", bvo);
		return "mypage";
	}
	

	// 회원정보 수정 기능
		@RequestMapping("/memberUpdate.do")
		public String memberUpdate(MemberVO vo,HttpSession session) {
			System.out.println("회원정보 수정 기능 동작");
			System.out.println(vo);
			mapper.memberUpdate(vo);
			return "redirect:/main.do";
		}
		
	// 회원탈퇴
		@RequestMapping("/memberDelete.do")
		public String memberDelete(MemberVO vo, HttpSession session) {
			System.out.println("회원 탈퇴 기능 동작");
			mapper.memberDelete(vo);
			System.out.println(vo);
			session.removeAttribute("info");
			return "redirect:/main.do";
		}
		
   // 나의 활동-내가 작성한 게시글 수
		@RequestMapping("/myLog.do")
		public void myLog(String m_nick,Model model,HttpSession session) {
			System.out.println("나의 활동");
			MemberVO vo=(MemberVO) session.getAttribute("info");
			m_nick=vo.getM_nick();
			System.out.println(vo);
			int cnt=mapper.getBoardCnt(vo);
			model.addAttribute("count", cnt);
			System.out.println(cnt);
		}
		
	// 나의 활동-내가 작성한 게시글 보기
	/*	@RequestMapping("/myContent.do")
		public void myContent(String m_nick,Model model,HttpSession session,BoardVO vo) {
		System.out.println("내가 작성한 게시글 보기");	
		MemberVO mvo=(MemberVO) session.getAttribute("info");
		m_nick=mvo.getM_nick();
		vo=mapper.myContent(m_nick);
		model.addAttribute("myContent", vo);*/

		
		// 나의 활동-게시글 삭제
		@RequestMapping("/boardDelete.do")
		public String boardDelete(int delete_seq) {
			System.out.println("게시판 삭제 기능 동작" + delete_seq);
			int b_seq=delete_seq;
			mapper.boardDelete(b_seq);
			return "redirect:/mypage.do";
		} 

	
		}

		
		
		  






