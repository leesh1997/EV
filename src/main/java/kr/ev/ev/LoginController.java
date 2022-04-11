package kr.ev.ev;

import javax.inject.Inject;

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
	                                                                                                                                                                                                   
}
	@RequestMapping("/join.do")
	public void join() {
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
//	@ResponseBody
//    @RequestMapping(value="/idCheck.do")
//    public int idCheck(MemberVO vo,ModelAndView mav) {
//        System.out.println("Controller.idCheck() 호출");
//        int result=0;
//        MemberVO user=MemberMapper.getUser(vo);
//        if(user!=null) result=1;
//        else System.out.println("아이디사용가능");
//        return result;
//    }
	
//	@RequestMapping(value = "checkId.ev", method = { RequestMethod.GET, RequestMethod.POST})
//    public @ResponseBody int idCheck( MemberVO user, Model model) {
//        return join.checkId(user);
//    }//

	// 아이디 중복체크 
	   @RequestMapping("/idCheck.do")
	   public @ResponseBody MemberVO idCheck(String id) {
		   System.out.println(id);
		   MemberVO vo = mapper.idCheck(id);
		   if(vo==null) {
			   vo = new MemberVO();
		   }
		   System.out.println(vo);
		   return vo;
	   }
	
}
