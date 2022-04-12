package kr.ev.ev;

import java.io.IOException;
import java.io.PrintWriter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
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
		/* System.out.println(id); */
		MemberVO vo = mapper.idCheck(id);
		if (vo == null) {
			vo = new MemberVO();
		}
		/* System.out.println(vo); */
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
	   public String loginSelect(MemberVO vo, HttpSession session, String id,String pw,HttpServletResponse response) {
		  System.out.println(id);
		  System.out.println(pw);
		  vo.setM_email(id);;
		  vo.setM_pw(pw);;
		   MemberVO info = mapper.loginSelect(vo);
		   System.out.println(vo);
		   // MemberVO info에 모든 정보 들어있음
		   
		   if(info!=null) {
			   session.setAttribute("info", info);
			   System.out.println(info.toString());
			   return "redirect:/main.do";
		   }
		   else {
		         response.setContentType("text/html; charset = UTF-8");
		         PrintWriter out;
		         try {
		            out = response.getWriter();
		            out.print("<script>alert('로그인 정보를 확인해주세요'); history.go(-1);");
		            out.print("</script>");
		            out.flush();
		         } catch (IOException e) {
		            e.printStackTrace();
		         }
		      }
		      
		      return "redirect:/login.do";
		   
		   
	   }
	
	// 로그인 체크
	/*
	 * @RequestMapping("/loginCheck.do") public @ResponseBody MemberVO
	 * loginCheck(String loginCheck) { MemberVO vo = mapper.loginCheck(loginCheck);
	 * if (vo == null) { vo = new MemberVO(); } System.out.println(vo); return vo; }
	 */
	
}
