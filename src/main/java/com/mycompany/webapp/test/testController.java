package com.mycompany.webapp.test;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/test")
@Log4j2
public class testController {
	
	@GetMapping("/imageInsert")
	public String goImages() {
		return "/test/imageInsert";
	}
	
	/* 첨부 파일 업로드 */
	@PostMapping("/uploadAjaxAction")
	public void uploadAjaxActionPOST(MultipartFile[] uploadFile) {
		
		log.info("uploadAjaxActionPOST..........");
		
		//파일 제대로 들어왔는지 확인
		for(MultipartFile multipartFile : uploadFile) {
			log.info("-----------------------------------------------");
			log.info("파일 이름 : " + multipartFile.getOriginalFilename());
			log.info("파일 타입 : " + multipartFile.getContentType());
			log.info("파일 크기 : " + multipartFile.getSize());			
		}
		
		//오늘 날짜의 'yyyy/MM/dd ' 형식의 String 데이터를 얻기 
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		String datePath = str.replace("-", File.separator);
		
		// 업로드를 수행하는 url 매핑 메서드(uploadAjaxActionPOST)에 파일을 저장할 기본적 경로
		String uploadFolder = "C:\\Temp\\product";
		
		/* 폴더 생성 [날짜별로]*/
		File uploadPath = new File(uploadFolder, datePath);
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		for(MultipartFile multipartFile : uploadFile) {
			
		}
		
	}
}
