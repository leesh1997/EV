package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ev.model.Paging;
import kr.ev.model.VideoMapper;
import kr.ev.model.VideoVO;


@Controller
public class VideoController {
	
	@Inject
	private VideoMapper mapper;
	
	@RequestMapping("video.do")
	public String MainSelect(@RequestParam("pageNum") int pageNum, Model model, VideoVO page, HttpServletRequest request) {
		
		System.out.println("영상 페이지 접근");
		System.out.println("게시물 수" + pageNum );

		int pages;
		
		if (request.getParameter("pageNum") != null) {
			pages = Integer.parseInt(request.getParameter("pageNum"));
		} else {
			pages = 1;
		}

		model.addAttribute("page", pages);
		System.out.println("page : " + pages);
		Paging paging = new Paging();
		paging.setPage(pages);
		
		int pageCount = 0;
		pageCount = mapper.getVisitCount();
		model.addAttribute("pageCount", pageCount);

		System.out.println("pageCount : " + pageCount);
		paging.setTotalCount(pageCount);
		paging.setPage(pages);
		
		System.out.println("총 끝페이지는 !!!!!!!"+ paging.getTotalPage());
		int totalPage = paging.getTotalPage();
		System.out.println("끝페이지 뜨나?" + totalPage);
		model.addAttribute("totalPage", totalPage);
		
		int startNum = (pages - 1) * 15 + 1;
		int endNum = pages * 15;		

		List<VideoVO> list = mapper.video(startNum);
		
		for(int i = 0; i < list.size(); i++) {
			String vTitle = list.get(i).getV_title();
			String fTitle = vTitle.replace("?", "");
			list.get(i).setV_title(fTitle);
		}
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		return "video";		
	}
	
	
	// 서치
	@RequestMapping("/videoSearch.do")
	public String videoSearch(@RequestParam("pageNum") int pageNum, String search_word, Model model, HttpServletRequest request) {
		
		System.out.println("서치 접근");
		System.out.println("서치 게시물 수" + pageNum );

		int pages;
		
		if (request.getParameter("pageNum") != null) {
			pages = Integer.parseInt(request.getParameter("pageNum"));
		} else {
			pages = 1;
		}
		
		model.addAttribute("page", pages);
		System.out.println("page : " + pages);
		Paging paging = new Paging();
		paging.setPage(pages);
		
		int pageCount = 0;
		pageCount = mapper.getSearchVisitCount(search_word);
		model.addAttribute("search_word", search_word);
		model.addAttribute("pageCount", pageCount);

		System.out.println("pageCount : " + pageCount);
		paging.setTotalCount(pageCount);
		paging.setPage(pages);
		
		int startNum = (pages - 1) * 15 + 1;
		int endNum = pages * 159;		

		List<VideoVO> list = mapper.search_video(search_word, startNum);
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		
		return "video";
	}
}
