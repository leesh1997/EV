package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ev.model.Paging;
import kr.ev.model.ProductMapper;
import kr.ev.model.ProductVO;
import kr.ev.model.SearchPageVO;
import kr.ev.model.VideoVO;
import kr.ev.model.WishlistVO;

@Controller
public class ProductController {
	@Inject
	private ProductMapper mapper;
	
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
	@RequestMapping("/he.do")
	public @ResponseBody WishlistVO he(String likee) {
		System.out.println("확인!!"+likee);
		int likeint= Integer.parseInt(likee);
		WishlistVO vo;
		vo= mapper.checklike(likeint);
		if(vo==null) {
			System.out.println("생성"+likeint);
			 vo = mapper.pluslike(likeint);
		}
		else {
			System.out.println("삭제"+likeint);
			 vo = mapper.deletelike(likeint);
		}
	
		return vo;
	}
}
