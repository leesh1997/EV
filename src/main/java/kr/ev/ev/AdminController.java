package kr.ev.ev;

import java.io.File;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import kr.ev.model.BoardMapper;
import kr.ev.model.BoardVO;
import kr.ev.utils.UploadFileUtils;

@Controller
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Inject
	private BoardMapper mapper;

	@Resource(name = "uploadPath")
	private String uploadPath;

	// 상품 등록
	@RequestMapping(value = "/board_writing.do", method = RequestMethod.POST)
	public String postGoodsRegister(BoardVO vo, MultipartFile file) throws Exception {
		System.out.println("어드민컨트롤러 접근");
		System.out.println(file);
		System.out.println(vo);
		String imgUploadPath = uploadPath + File.separator + "test";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if (file != null) {
			System.out.println("파일 없음");
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		vo.setB_file(File.separator + "test" + ymdPath + File.separator + fileName);
		vo.setB_thumbImg(
				File.separator + "test" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		System.out.println("등록 전까지 도착");
		mapper.register(vo);
		
		return "main";
	}

}
