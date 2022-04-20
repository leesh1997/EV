package kr.ev.ev;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ev.model.MemberVO;
import kr.ev.model.Paging;
import kr.ev.model.ProductMapper;
import kr.ev.model.ProductVO;
import kr.ev.model.SearchPageVO;
import kr.ev.model.VideoVO;
import kr.ev.model.WishlistVO;
import kr.ev.model.ZzimVO;

@Controller
public class ProductController {
	@Inject
	private ProductMapper mapper;
//	페이지시작
	@RequestMapping("/product.do")
	public String product(@RequestParam("pageNum") int pageNum, Model model, ProductVO page, HttpServletRequest request) {
		/*
		 * List<ProductVO> list = mapper.product(); model.addAttribute("list",list);
		 */
		Paging paging= new Paging();
		System.out.println("에에?");
		System.out.println("게시물 수" + pageNum );

		int pages;
		if (request.getParameter("pageNum") != null) {
			pages = Integer.parseInt(request.getParameter("pageNum"));
		} else {
			pages = 1;
		}
		int v = paging.getTotalPage();
		model.addAttribute("totalPage", v);
		model.addAttribute("page", pages);
		System.out.println("page : " + pages);
		paging.setPage(pages);
		
		int pageCount = 0;
		pageCount = mapper.getVisitCount();
		System.out.println(pageCount);
		model.addAttribute("pageCount", pageCount);
		
		System.out.println("pageCount : " + pageCount);
		paging.setTotalCount(pageCount);
		paging.setPage(pages);
		
		int startNum = (pages - 1) *16 + 1;
		int endNum = pages * 16;		
		List<VideoVO> type_list = mapper.product_dis();
		/*
		 * for(int i =0; i<type_list.size();i++) { System.out.println(type_list.get(i));
		 * }
		 */
		model.addAttribute("type_list",type_list);
		List<VideoVO> list = mapper.product(startNum);
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		return "product";
		
	}
// 검색기능
	@RequestMapping("/product_search.do")
	public String product_search(@RequestParam("pageNum") int pageNum,@RequestParam("searchinfo")String searchinfo , Model model, ProductVO page,
			HttpServletRequest request, SearchPageVO spvo) {
		
		/*
		 * List<ProductVO> list = mapper.product(); model.addAttribute("list",list);
		 */
		try {
			Paging paging= new Paging();
			System.out.println("게시물 수" + pageNum );	
			System.out.println("서치 넘어온값"+ searchinfo);
			int pages;
			if (request.getParameter("pageNum") != null) {
				pages = Integer.parseInt(request.getParameter("pageNum"));
			} else {
				pages = 1;
			}
			String search;
			if (request.getParameter("searchinfo") != null) {
				search = request.getParameter("searchinfo");
			} else {
				search=null;
			}
			int v = paging.getTotalPage();
			model.addAttribute("totalPage", v);
			model.addAttribute("page", pages);
			System.out.println("page : " + pages);
			paging.setPage(pages);
			paging.setSearchinfo(search);
			int pageCount = 0;
			pageCount = mapper.getVisitCount_result(searchinfo);
			System.out.println(pageCount);
			model.addAttribute("pageCount", pageCount);
			
			System.out.println("pageCount : " + pageCount);
			paging.setTotalCount(pageCount);
			paging.setPage(pages);
			int startNum = (pages - 1) * 16 + 1;
			System.out.println("startNum = " + startNum);
			int endNum = pages * 16;		
			List<VideoVO> type_list = mapper.product_dis();
			/*
			 * for(int i =0; i<type_list.size();i++) { System.out.println(type_list.get(i));
			 * }
			 */
			spvo.setStartNum(startNum);
			spvo.setSearchinfo(searchinfo);
			model.addAttribute("search_info",searchinfo);
			model.addAttribute("type_list",type_list);
			List<VideoVO> list = mapper.product_result(spvo);
			model.addAttribute("list", list);
			model.addAttribute("paging", paging);
			return "product";
		}
		catch (Exception e) {
			return "redirect:/product.do?pageNum=1";
		}
		
		}
// 좋아요 누를시 지워지면 검은색 아니면 분홍색 하게 해주는 db 비교 ㄱ코드
	@RequestMapping("/he.do")
	public @ResponseBody ZzimVO he(ZzimVO zzim ,WishlistVO vo,String likee,HttpSession session) {
		
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
		zzim.setP_seq(likeint);
		
	
		vo= mapper.checklike(zzim);
		System.out.println(vo);
		if(vo==null) {
			
			
			
			System.out.println("생성"+likeint);
			 vo = mapper.pluslike(zzim);
			 zzim.setSuccess("success");
			 return zzim;
		}
		else {
			System.out.println("삭제"+likeint);
			 vo = mapper.deletelike(zzim);
			 zzim.setSuccess("delete");
			 return zzim;
		}
	
		
		}
	}
// 	시작시 좋아요리스트 표시
	@RequestMapping("/wishlistcheck.do")
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
				wish= mapper.startcheck(info);
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
