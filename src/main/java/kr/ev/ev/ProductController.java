package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.ProductMapper;
import kr.ev.model.ProductVO;

@Controller
public class ProductController {
	@Inject
	private ProductMapper mapper;
	
	@RequestMapping("/product.do")
	public void product(Model model) {
		List<ProductVO> list = mapper.product();
		model.addAttribute("list",list);
	}
}
