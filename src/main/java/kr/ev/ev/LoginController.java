package kr.ev.ev;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ev.model.MemberMapper;
import kr.ev.model.MemberVO;

@Controller
public class LoginController {

	@Inject
	private MemberMapper mapper;

	@RequestMapping("/login.do")
	public void login() {
		System.out.println("로그인~!");

	}

	@RequestMapping("/join.do")
	public void join() {
		System.out.println("회원가입~!");

	}

	@RequestMapping("/joinInsert.do")
	public String joinInsert(MemberVO vo) {
		System.out.println("회원가입 입력");
		// 회원정보를 입력받아 tmember 테이블에 회원정보 저장
		// MemberVO, MemberMapper (interface, xml)
		mapper.joinInsert(vo);
		return "redirect:/main.do";
	}

	// 아이디 중복체크
	@RequestMapping("/idCheck.do")
	public @ResponseBody MemberVO idCheck(String id) {
		System.out.println(id);
		MemberVO vo = mapper.idCheck(id);
		if (vo == null) {
			vo = new MemberVO();
		}
		System.out.println(vo);
		return vo;
	}

	// 닉네임 중복체크
	@RequestMapping("/nickCheck.do")
	public @ResponseBody MemberVO nickCheck(String nick) {
		System.out.println(nick);
		MemberVO vo = mapper.nickCheck(nick);
		if (vo == null) {
			vo = new MemberVO();
		}
		System.out.println(vo);
		return vo;
	}
	
	// 로그인
	  @RequestMapping("/loginSelect.do")
	   public String loginSelect(MemberVO vo, HttpSession session) {
		   MemberVO info = mapper.loginSelect(vo);
		   // MemberVO info에 모든 정보 들어있음
		   
		   if(info!=null) {
			   session.setAttribute("info", info);
		   }
		   //info 잘 들어왔는지 확인
		   System.out.println(info.toString());
		   return "redirect:/main.do";
		   
	   }
	
	
	
}
