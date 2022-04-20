package kr.ev.ev;

import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.ev.model.BoardMapper;
import kr.ev.model.BoardVO;
import kr.ev.model.MemberVO;

import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FileUploadController {

	private Logger logger = LoggerFactory.getLogger(FileUploadController.class);

	@Inject
	private BoardMapper mapper;

	// 파일 저장할 위치
	// 파일 등록 매핑
	@RequestMapping("/fileUpload.do")
	public String fileUpload(MultipartFile file, String b_title, String b_content, String m_nick,
			RedirectAttributes redirectAttributes, Model model, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		System.out.println("파일 컨트롤러 접근 후 " + file);
		System.out.println(session.getServletContext().getRealPath("resources/test"));
		String b_file = session.getServletContext().getRealPath("resources/test");
		logger.info("fileUpload={}", file);
		//String uuid = UUID.randomUUID().toString();
		// file upload to system
		File converFile = new File(b_file, file.getOriginalFilename());
		logger.info("fileUpload converFile={}", converFile);
		file.transferTo(converFile);
		MemberVO Mvo = (MemberVO) session.getAttribute("info");
		m_nick = Mvo.getM_nick();
		System.out.println("==========");
		System.out.println(b_title);
		System.out.println(b_content);
		System.out.println(m_nick);
		System.out.println("==========");
		System.out.println(b_file);
		String msg = file.getOriginalFilename();
		redirectAttributes.addFlashAttribute("msg", msg);
		System.out.println("msg뭐야!!!!!" + msg);
		logger.info("fileUpload={}", msg);
		

		String lo = b_file +'\\' + msg;
		String b_fileLO = lo.replace('\\', '/');
		String b_file1[] = b_fileLO.split("EV/");
		b_file = b_file1[1];
		System.out.println(b_file);
		
		BoardVO b_vo = new BoardVO(0, b_title, b_content, b_file, null, m_nick, 0, 0);
		mapper.fileboard(b_vo);
		System.out.println("파일 저장 완료");

		return "redirect:/board.do";
		// System.out.println("boardVO 값은 ?? " + vo);

	}

}
