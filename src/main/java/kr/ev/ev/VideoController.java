package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.VideoMapper;
import kr.ev.model.VideoVO;


@Controller
public class VideoController {
	
	@Inject
	private VideoMapper mapper;
	

	@RequestMapping("video.do")
	public String MainSelect(Model model) {
		System.out.println("영상 페이지 접근");
		List<VideoVO> list = mapper.video();
		model.addAttribute("list",list);
		
		return "video";
	}
	
}
