package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ev.model.VideoMapper;
import kr.ev.model.VideoVO;


@Controller
public class VideoController {
	
	@Inject
	private VideoMapper mapper;
	
	@RequestMapping("video.do")
	public String MainSelect(@RequestParam("pageNum") int pageNum, Model model, VideoVO page) {
		
		System.out.println("영상 페이지 접근");

		//System.out.println(list.get(1).getV_url());
		
		System.out.println("게시물 수" + pageNum );
		
		//시작 게시물
		int postStart = 0;
				
		if (pageNum >= 1) {
			postStart = (pageNum - 1) * 10 ;
		}
		// 전체 게시글 수
		int amount = mapper.boardAmount();
		System.out.println(amount);
		// 마지막페이지
		int endPageNum = (amount - 1) / 10 + 1;
		int postStart1 = postStart;
		System.out.println(postStart1);


		List<VideoVO> list = mapper.video(postStart);
		System.out.println("문의 게시판 이동 동작");
		model.addAttribute("endPageNum", endPageNum);
		model.addAttribute("postStart", postStart1);
		model.addAttribute("list", list);
		System.out.println("끝");
		return "video";
		
		
	}

}
