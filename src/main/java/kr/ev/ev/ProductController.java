package kr.ev.ev;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.PaletteMapper;

@Controller
public class ProductController {
	@Inject
	private PaletteMapper mapper;
	
	@RequestMapping("/product.do")
	public void product() {
		
	}
}
