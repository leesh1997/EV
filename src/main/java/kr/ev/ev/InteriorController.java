package kr.ev.ev;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ev.model.ColorVO;
import kr.ev.model.InteriorMapper;
import kr.ev.model.InteriorVO;
import kr.ev.model.MemberVO;
import kr.ev.model.Paging;
import kr.ev.model.PaletteMapper;
import kr.ev.model.PaletteVO;
import kr.ev.model.SearchPageVO;
import kr.ev.model.VideoVO;
import kr.ev.model.WishlistVO;
import kr.ev.model.ZzimVO;

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
	public String interiorSearch (@RequestParam("pageNum") int pageNum, @RequestParam("c_group") int c_group,
			HttpSession session , HttpServletRequest request, HttpServletResponse response, PrintWriter out,
			SearchPageVO vo, ColorVO cvo,MemberVO mem, Model model)	{
		
		System.out.println("제발나와라요"+ c_group);
		System.out.println("게시물 수" + pageNum );
		
		int pages;
		
		if (request.getParameter("pageNum") != null) {
			pages = Integer.parseInt(request.getParameter("pageNum"));
		} else {
			pages = 1;
		}
		
		vo.setC_group(c_group);
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
		
		model.addAttribute("page", pages);
		System.out.println("page : " + pages);
		Paging paging = new Paging();
		paging.setPage(pages);
		
		int pageCount = 0;
		pageCount = mapper.getVisitCount2(vo);
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
		
		vo.setStartNum(startNum);
		
		System.out.println("vo는 나오냐? " + vo);
		List<InteriorVO> list = mapper.getSelect(vo);
		System.out.println(list);
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		// 대표 색상 보여주기
		List<ColorVO> standardList = mapper.standardColorGallery();
		
		System.out.println(standardList);
		model.addAttribute("standardList", standardList);
		
		return "interiorGallery";
		
	
	}
	
	@RequestMapping("/plInteriorSearch.do")
	public String plInteriorSearch (@RequestParam("pageNum") int pageNum, @RequestParam("pl_color") String pl_color,
			HttpSession session , HttpServletRequest request, HttpServletResponse response, PrintWriter out,
			SearchPageVO pvo, ColorVO cvo,MemberVO mem,   Model model)	{
		
		System.out.println("제발나와라요"+ pl_color);
		
		//pl_color = pl_color.substring(4, 15);
		//System.out.println("잘라졌나? " + pl_color);
		
		System.out.println("게시물 수" + pageNum );
		
		int pages;
		
		if (request.getParameter("pageNum") != null) {
			pages = Integer.parseInt(request.getParameter("pageNum"));
		} else {
			pages = 1;
		}
		
		pvo.setPl_color(pl_color);
		System.out.println("vo는 나오냐? " + pvo);
		
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
		model.addAttribute("page", pages);
		System.out.println("page : " + pages);
		Paging paging = new Paging();
		paging.setPage(pages);
		
		int pageCount = 0;
		pageCount = mapper.getVisitCount3(pvo);
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
		
		pvo.setStartNum(startNum);
		

		List<InteriorVO> list = mapper.getPlSelect(pvo);
		System.out.println(list);
		model.addAttribute("pvo", pvo);
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		// 대표 색상 보여주기
		List<ColorVO> standardList = mapper.standardColorGallery();
		
		System.out.println(standardList);
		model.addAttribute("standardList", standardList);
		
		return "interiorGallery";
		
	
	}
	
	// 인테리어 메뉴
	@RequestMapping("/interior_menu.do")
	public void interior_menu(Model model) {
		System.out.println("인테리어 메뉴");

	}
	@RequestMapping("/ihe.do")
	public @ResponseBody ZzimVO he(ZzimVO zzim ,WishlistVO vo,String likee,HttpSession session,HttpServletResponse response) {
		
		MemberVO memvo= (MemberVO)session.getAttribute("info");
		if(memvo.getM_email()==null) {
			
			return null;
		}
		else {
		System.out.println("확인!!"+likee);
		System.out.println("아이디!!"+memvo.getM_email());
		int likeint= Integer.parseInt(likee);
		/*
		 * String email=memvo.getM_email(); vo.setM_email(email); vo.setP_seq(likeint);
		 */
		
		zzim.setM_email(memvo.getM_email());
		zzim.setI_seq(likeint);
		
	
		vo= mapper.Ichecklike(zzim);
		System.out.println(vo);
		if(vo==null) {
			
			
			
			System.out.println("생성"+likeint);
			 vo = mapper.Ipluslike(zzim);
			 zzim.setSuccess("success");
			 return zzim;
		}
		else {
			System.out.println("삭제"+likeint);
			 vo = mapper.Ideletelike(zzim);
			 zzim.setSuccess("delete");
			 return zzim;
		}
	
		
		}
	}
	@RequestMapping("/iwishlistcheck.do")
	public @ResponseBody ArrayList<WishlistVO> wishlistcheck(ArrayList<WishlistVO> wish,
			Model model,String likee,HttpSession session) {
	
		try{
			MemberVO vo= (MemberVO)session.getAttribute("info");
			System.out.println(session.getAttribute("info"));
			if (vo==null) {
				System.out.println("hehe");
				return null;
			}
			else {
				System.out.println(vo.getM_email());
				String info = vo.getM_email();
				System.out.println("info값"+ info);
				wish= mapper.istartcheck(info);
				System.out.println("wish값 등장!"+wish);
				model.addAttribute("wish", wish);
				return wish;
			}
		}
		catch (Exception e) {
			System.out.println("error");
			return null;
		}
		
	
		
	
	}
	

}
