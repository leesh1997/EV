package kr.ev.ev;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
		@RequestMapping("/main.do")
		public String Main(Model model) {
			return "main";
		}
}
