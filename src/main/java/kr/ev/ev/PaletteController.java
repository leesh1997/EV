package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.PaletteMapper;
import kr.ev.model.PaletteVO;



@Controller
public class PaletteController {
	
	@Inject
	private PaletteMapper mapper;
	
	@RequestMapping("/palette.do")
	public String Main(Model model) {
		List<PaletteVO> list = mapper.paletteColors(); 
		model.addAttribute("list", list);
		return "palette";
	}
	
}
