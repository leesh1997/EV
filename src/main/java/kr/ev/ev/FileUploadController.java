package kr.ev.ev;

import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.UUID;

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
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FileUploadController {

	private Logger logger = LoggerFactory.getLogger(FileUploadController.class);

	// 파일 저장할 위치
    // 파일 등록 매핑
    @RequestMapping(value = "/fileUpload.do", method = RequestMethod.POST)
    public String fileUpload(@RequestParam MultipartFile file,
            RedirectAttributes redirectAttributes, HttpSession session) throws IOException {
    	System.out.println(session.getServletContext().getRealPath("resources/test"));
    	String savePath = session.getServletContext().getRealPath("resources/test");
        logger.info("fileUpload={}", file);
        String uuid = UUID.randomUUID().toString();
        // file upload to system
        File converFile = new File( savePath, uuid + file.getOriginalFilename());
        logger.info("fileUpload converFile={}", converFile);
        file.transferTo(converFile);

        String msg = file.getOriginalFilename() + " is saved in server db";
        redirectAttributes.addFlashAttribute("msg", msg);
        logger.info("fileUpload={}", msg);
        System.out.println("들어오니?");
        return "redirect:board.do";
    }

}
