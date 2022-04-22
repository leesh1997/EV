package kr.ev.ev;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ev.model.InteriorVO;
import kr.ev.model.TestMapper;

@Controller
public class TestController {
	
	@Inject
	private TestMapper mapper;
	
	@RequestMapping("/test.do")
	public void test(Model model,InteriorVO vo) {
		List<InteriorVO> list= mapper.test();
		model.addAttribute("test", list);
		
		System.out.println("list : "+ list);
	}

}
