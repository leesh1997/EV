package kr.ev.ev;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PaletteController {
	@RequestMapping("/palette.do")
	public String Main(Model model) {
		return "palette";
	}
}
