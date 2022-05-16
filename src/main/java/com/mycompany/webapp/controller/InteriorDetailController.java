package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.interior.InteriorDetailDto;
import com.mycompany.webapp.service.InteriorDetailService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class InteriorDetailController {

	@Resource
	private InteriorDetailService interiorDetailService;
	
	@RequestMapping("/interior_detail")
	public String interiorDetail() {
		log.info("실행");
		return "interior/interior_detail";
	}
	@GetMapping("/interior_detail")
	public String interiorDetail2(InteriorDetailDto interiorDetailDto, Model model) {
	    return "interior/interior_detail";
	}
	
	@PostMapping("/interiorDDataUpload")
	public String interiorDDataUpload(InteriorDetailDto interiorDetailDto) throws IllegalStateException, IOException {
	    log.info("실행");
	    //log.info(interiorDetailDto.getDImgPath());
	    //log.info(interiorDetailDto.getIImg().getOriginalFilename());
	    if (!interiorDetailDto.getIImg().isEmpty()) {
	      interiorDetailDto.setIdImgPath(interiorDetailDto.getIImg().getOriginalFilename());
  
	  	File file = new File("C:/Temp/portfolio/" + interiorDetailDto.getIdImgPath());
	  	interiorDetailDto.getIImg().transferTo(file);
	  	interiorDetailService.insertInteriorDetail(interiorDetailDto);  
	    }
	   return "redirect:/interior_detail";
	}
}
