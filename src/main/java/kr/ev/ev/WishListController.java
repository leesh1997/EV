package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.ev.model.PaletteVO;
import kr.ev.model.WishListMapper;

@Controller
public class WishListController {
	@Inject
	WishListMapper mapper;
	@RequestMapping("/wishlist.do")
	public void wishlist(Model model) {
		 List<PaletteVO> list = mapper.wishlist();	
		 for(int i = 0; i<list.size(); i++) {
		 }
		model.addAttribute("p_list",list);
		
		
	}
	@RequestMapping("/pwish_delete.do")
	public void pwish_delete() {
		
	}
	
	
	
	
	/*
	 * @RequestMapping("/wishlist_product.do") public void product_wishlist() {
	 * 
	 * }
	 * 
	 * @RequestMapping("/wishlist_palette.do") public void palette_wishlist() {
	 * 
	 * }
	 */
}
