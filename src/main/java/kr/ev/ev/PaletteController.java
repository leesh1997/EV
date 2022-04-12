package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.ColorVO;
import kr.ev.model.PaletteMapper;
import kr.ev.model.PaletteVO;



@Controller
public class PaletteController {
	
	@Inject
	private PaletteMapper mapper;
	
	@RequestMapping("/palette.do")
	public String showPalette(Model model) {
		System.out.println("된다!");
		List<ColorVO> list = mapper.colorGallery(); 
		model.addAttribute("list", list);
		/* System.out.println(list.get(0).getC_name()); */
		return "palette";
	}
	
	@RequestMapping("/saveColors.do")
	public String saveColors(Model model, PaletteVO vo) {
		System.out.println("팔레트 저장");
		System.out.println(vo);
		mapper.saveColors(vo);
		System.out.println("팔레트 저장완료");
		return "redirect:/palette.do";
	}
	
	@RequestMapping("/palette_menu.do")
	public void createPalette(Model model) {

	}
	
	@RequestMapping("/paletteRecommend.do")
	public void viewPalette(Model model) {

	}
}


/* List<PaletteVO> colorList */