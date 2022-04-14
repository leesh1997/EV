package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.MypageMapper;




@Controller
public class MypageController {
	
	@Inject
	private MypageMapper mapper;
	
	
	@RequestMapping("/mypage.do")
	public String Mypage(Model model) {
		System.out.println("마이페이지~!");
		return "mypage";
	}



}



