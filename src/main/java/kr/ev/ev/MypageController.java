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
		
   // 나의 활동
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
		

		
		  


}



