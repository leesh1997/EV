package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.ColorVO;
import kr.ev.model.PaletteMapper;



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
	
	@RequestMapping("/selectColors.do")
	public String selectColors(Model model) {
		System.out.println("선택된다!");
		List<ColorVO> list2 = mapper.chosen_colors();
		return "palette";
	}
	
	
}
