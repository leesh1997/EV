package kr.ev.ev;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import kr.ev.model.ViewMapper;
import kr.ev.model.ViewVO;

@Controller
public class ViewController {

	@Inject
	private ViewMapper mapper;
	
	@RequestMapping("/view.do")
	public void view(Model model, ViewVO vo, HttpServletRequest request) {
		System.out.println("안녕 나는 뷰 컨트롤러야~");
		HttpSession session = request.getSession();
		List<ViewVO> list= mapper.view();
		System.out.println("list 들어오니? : "+ list);
		session.setAttribute("listLi", list);
		
	}
	
}
