package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ev.model.MagazineMapper;
import kr.ev.model.MagazineVO;
import kr.ev.model.Paging;

@Controller
public class MagazineController {
	
	@Inject
	private MagazineMapper mapper;
	
	/*
	 * @RequestMapping("magazine.do") public void showMagazine(Model model) {
	 * System.out.println("매거진 보기"); List<MagazineVO> list = mapper.showMagazine();
	 * model.addAttribute("list", list); }
	 */
	@RequestMapping("choise_product_or_magazine.do")
	public void choise_product_or_magazine() {
		
	}
	
	/* 페이징 */
	@RequestMapping("/magazine.do")
	public String MagazineSelect(@RequestParam("pageNum") int pageNum, Model model, MagazineVO page, HttpServletRequest request) {
		
		System.out.println("매거진 페이지 접근");
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
		pageCount = mapper.getMagaVisitCount();
		model.addAttribute("pageCount", pageCount);

		System.out.println("pageCount : " + pageCount);
		paging.setTotalCount(pageCount);
		paging.setPage(pages);
		
		System.out.println("총 끝페이지는 !!!!!!!"+ paging.getTotalPage());
		int totalPage = paging.getTotalPage();
		System.out.println("끝페이지 뜨나?" + totalPage);
		model.addAttribute("totalPage", totalPage);
		
		int startNum = (pages - 1) * 12 + 1;
		int endNum = pages * 12;		

		List<MagazineVO> list = mapper.magazine(startNum);
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);

		return "magazine";		
	}
	
}
