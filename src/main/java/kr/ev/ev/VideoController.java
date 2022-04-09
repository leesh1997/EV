package kr.ev.ev;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VideoController {

	@RequestMapping("video.do")
	public String Main(Model model) {
		System.out.println("영상 페이지 접근");
		return "video";
	}
	
}
