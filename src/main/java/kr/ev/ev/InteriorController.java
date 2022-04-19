package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.InteriorMapper;
import kr.ev.model.InteriorVO;

@Controller
public class InteriorController {
	
	@Inject
	private InteriorMapper mapper;
	
	
	@RequestMapping("/interiorGallery.do")
	public String showInteriorImg(Model model) {
		
		System.out.println("이미지 보여주기");
//		List<InteriorVO> list = mapper.showInteriorImg();
//		model.addAttribute("list", list);
		return "interiorGallery";
		
	}
	

}
