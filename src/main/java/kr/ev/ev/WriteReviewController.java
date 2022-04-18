package kr.ev.ev;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.ev.model.BoardVO;
import kr.ev.model.MemberVO;
import kr.ev.model.Paging;
import kr.ev.model.ReviewMapper;
import kr.ev.model.VideoVO;

@Controller
public class WriteReviewController {
	
	@Inject
	private ReviewMapper mapper;

	@RequestMapping("review.do")
	public String review(Model model, BoardVO vo, HttpServletRequest request) {
		
		System.out.println("리뷰 페이지 접근");
		return "review";		
	}
	
	@RequestMapping("WriteReview.do")
	public String WriteReview(Model model, BoardVO Bvo, MemberVO Mvo, HttpServletRequest request) {
		
		System.out.println("리뷰 작성 버튼 접근");
		String visit_name = request.getParameter("visit_name");
		String visit_img = request.getParameter("visit_img");
		String mem_nick = Mvo.getM_nick();
		String dir = "D:/";
		String realDir = request.getRealPath(dir);
		
		try {
			MultipartRequest multi = new MultipartRequest(request, realDir, 1024*1024*10, "utf-8", new DefaultFileRenamePolicy());
			String title = multi.getParameter("title");
			String content = multi.getParameter("content");
			String reviewImgName = multi.getFilesystemName("reviewImg");
			String reviewImgPath = dir+"/"+reviewImgName;
			
			mapper.writeReview(Bvo);
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
		
		
		
		return "redirect:/board.do";		
	}
	
}
