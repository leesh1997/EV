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
import kr.ev.model.SearchPageVO;
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
	public String interiorSearch (@RequestParam("pageNum") int pageNum, HttpServletRequest request, SearchPageVO vo, ColorVO cvo, String c_seq2, Model model)	{
		System.out.println("제발나와라요"+ c_seq2);
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
		pageCount = mapper.getVisitCount2();
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

		//List<ColorVO> cvo = mapper.colorList(vo);
		
		
	if(c_seq2.equals("5")) {	
		cvo.setC_seq2("1");
		List<ColorVO> cList = mapper.colorList(cvo);
		System.out.println("cList는? " + cList);
	} else if(c_seq2.equals("15")) {
		cvo.setC_seq2("2");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("25")) {
		cvo.setC_seq2("3");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("35")) {
		cvo.setC_seq2("4");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("45")) {
		cvo.setC_seq2("5");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("55")) {
		cvo.setC_seq2("6");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("65")) {
		cvo.setC_seq2("7");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("75")) {
		cvo.setC_seq2("8");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("85")) {
		cvo.setC_seq2("9");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("95")) {
		cvo.setC_seq2("10");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("105")) {
		cvo.setC_seq2("11");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("115")) {
		cvo.setC_seq2("12");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("125")) {
		cvo.setC_seq2("13");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("135")) {
		cvo.setC_seq2("14");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("145")) {
		cvo.setC_seq2("15");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("155")) {
		cvo.setC_seq2("16");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("165")) {
		cvo.setC_seq2("17");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("175")) {
		cvo.setC_seq2("18");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("185")) {
		cvo.setC_seq2("19");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("195")) {
		cvo.setC_seq2("20");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("205")) {
		cvo.setC_seq2("21");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("215")) {
		cvo.setC_seq2("22");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("225")) {
		cvo.setC_seq2("23");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("235")) {
		cvo.setC_seq2("24");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("245")) {
		cvo.setC_seq2("25");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("255")) {
		cvo.setC_seq2("26");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("265")) {
		cvo.setC_seq2("27");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("275")) {
		cvo.setC_seq2("28");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("281")) {
		cvo.setC_seq2("29");
		List<ColorVO> cList = mapper.colorList(cvo);
	} else if(c_seq2.equals("300")) {
		cvo.setC_seq2("30");
		List<ColorVO> cList = mapper.colorList(cvo);
	} 
		
		
		
		// ㅠ.ㅠ
		//vo.setC_rgb(c_seq2);
		vo.setStartNum(startNum);
		System.out.println("vo는 나오냐? " + vo);
		List<InteriorVO> list = mapper.getSelect(vo);
		System.out.println(list);
		model.addAttribute("list", list);
		
		return "interiorGallery";
	}
	
	
	
	
	

	
}
