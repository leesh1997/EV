package kr.ev.ev;

import java.io.PrintWriter;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ev.model.ColorVO;
import kr.ev.model.InteriorMapper;
import kr.ev.model.InteriorVO;
import kr.ev.model.MemberVO;
import kr.ev.model.Paging;
import kr.ev.model.PaletteMapper;
import kr.ev.model.PaletteVO;
import kr.ev.model.VideoVO;

@Controller
public class InteriorController {

	@Inject
	private InteriorMapper mapper;

	@RequestMapping("/interiorGallery.do")
	public String showInteriorImg(@RequestParam("pageNum") int pageNum, MemberVO mem, Model model, InteriorVO page,HttpSession session , HttpServletRequest request, HttpServletResponse response, PrintWriter out) {
		System.out.println("이미지 보여주기");
		System.out.println("팔레트 보여주기");
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
		
		int startNum = (pages - 1) * 12 + 1;
		int endNum = pages * 12;		
		try {
			mem = (MemberVO) session.getAttribute("info");
			List<PaletteVO> p_list = mapper.showPalette(mem.getM_email());
			model.addAttribute("p_list", p_list);
			System.out.println(p_list);
			
		} 
		catch (Exception e) {
			response.setContentType("text/html; charset = UTF-8");
			
			out.print("<script>alert('마이 팔레트 생성 후 이용 가능합니다.');</script>");
			
		}
		
		List<InteriorVO> list = mapper.showInteriorImg(startNum);
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		
		
		// 대표 색상 보여주기
		List<ColorVO> standardList = mapper.standardColorGallery();
		
		System.out.println(standardList);
		model.addAttribute("standardList", standardList);
		
		
		return "interiorGallery";
	}
	@RequestMapping("/interiorSearch.do")
	public String interiorSearch (int inSer)	{
		System.out.println("제발나와라요"+ inSer);
		return "interiorGallery";
	}
	
	
	
	
	

	
}
