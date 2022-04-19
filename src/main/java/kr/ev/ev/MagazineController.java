package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.MagazineMapper;
import kr.ev.model.MagazineVO;

@Controller
public class MagazineController {
	
	@Inject
	private MagazineMapper mapper;
	
	@RequestMapping("magazine.do")
	public void showMagazine(Model model) {
		System.out.println("매거진 보기");
		List<MagazineVO> list = mapper.showMagazine();
		model.addAttribute("list", list);
	}
	@RequestMapping("choise_product_or_magazine.do")
	public void choise_product_or_magazine() {
		
	}
}
