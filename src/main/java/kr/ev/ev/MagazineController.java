package kr.ev.ev;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MagazineController {
	
	@RequestMapping("magazine.do")
	public String Main(Model model) {
		return "magazine";
	}
}
