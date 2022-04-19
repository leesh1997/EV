package kr.ev.ev;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.ev.model.BoardVO;
import kr.ev.model.MemberVO;
import kr.ev.model.Paging;
import kr.ev.model.ReviewMapper;
import kr.ev.model.VideoVO;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class WriteReviewController {
	
	@Inject
	private ReviewMapper mapper;

	@RequestMapping("review.do")
	public String review(Model model, BoardVO vo, HttpServletRequest request) {
		
		System.out.println("리뷰 페이지 접근");
		return "review";		
	}
	
	@PostMapping("WriteReview.do")
	public void WriteReview(MultipartFile[] uploadFile, Model model) {
		
		System.out.println("리뷰 작성 버튼 접근");
		
		String uploadFolder = "D:\\upload";
		
		for (MultipartFile multipartFile : uploadFile) {
			
			log.info("=======================");
			log.info("Upload File Name : " +multipartFile.getOriginalFilename());
			log.info("Upload File Size: " + multipartFile.getSize());
			
			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
			
			// IE has file path
			// uploadFileName = 
			
			try {
				multipartFile.transferTo(saveFile);
			} catch (Exception e) {
				log.error(e.getMessage());
			}// end catch
			
		}// end for
		
		//return "redirect:/board.do";		
	}
	
}
