package com.mycompany.webapp.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.webapp.dto.interior.InteriorDto;
import com.mycompany.webapp.service.ConsultService;
import com.mycompany.webapp.service.InteriorService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class InteriorController {
	
	@Resource // 인테리어 서비스 객체
	private InteriorService interiorService;
	
	/*	@RequestMapping("/interior")
		public String interior() {
			log.info("실행");
			return "interior/interior";
		}*/
	
	@GetMapping("/interior")
	public String interior2(InteriorDto interiors, Model model) {
			log.info("실행");
		  //itype 드롭다운리스트의 항목을 추가할 목적
	      List<String> typeList = new ArrayList<>();
	      typeList.add("portfolio");
	      typeList.add("model");
	      model.addAttribute("typeList", typeList);   
	      
	      //기본 선택 항목을 설정
	      interiors.setItype("Portfolio");
	      
	      //istyle 드롭다운리스트의 항목을 추가할 목적
	      List<String> StyleList = new ArrayList<>();
	      StyleList.add("modern");
	      StyleList.add("chic");
	      StyleList.add("natural");
	      StyleList.add("minimal");
	      StyleList.add("european");
	      model.addAttribute("StyleList", StyleList);   
	      
	      //기본 선택 항목을 설정
	      interiors.setIstyle("modern");
	      
	      //allColor 드롭다운리스트의 항목을 추가할 목적
	      List<String> AllColorList = new ArrayList<>();
	      AllColorList.add("black");
	      AllColorList.add("white");
	      AllColorList.add("beige");
	      AllColorList.add("wheat");
	      AllColorList.add("brown");
	      AllColorList.add("red");
	      AllColorList.add("pink");
	      AllColorList.add("yellow");
	      AllColorList.add("lightGreen");
	      AllColorList.add("lightblue");
	      model.addAttribute("AllColorList", AllColorList);   
	      
	      //기본 선택 항목을 설정
	      interiors.setIstyle("black");
	      
	    //wcolor 드롭다운리스트의 항목을 추가할 목적
	      List<String> WallColorList = new ArrayList<>();
	      WallColorList.add("black");
	      WallColorList.add("white");
	      WallColorList.add("beige");
	      WallColorList.add("wheat");
	      WallColorList.add("brown");
	      WallColorList.add("red");
	      WallColorList.add("pink");
	      WallColorList.add("yellow");
	      WallColorList.add("lightGreen");
	      WallColorList.add("lightblue");
	      model.addAttribute("WallColorList", WallColorList);   
	      
	      //기본 선택 항목을 설정
	      interiors.setIstyle("black");
	      
	    //fcolor 드롭다운리스트의 항목을 추가할 목적
	      List<String> FloorColorList = new ArrayList<>();
	      FloorColorList.add("black");
	      FloorColorList.add("white");
	      FloorColorList.add("beige");
	      FloorColorList.add("wheat");
	      FloorColorList.add("brown");
	      FloorColorList.add("red");
	      FloorColorList.add("pink");
	      FloorColorList.add("yellow");
	      FloorColorList.add("lightGreen");
	      FloorColorList.add("lightblue");
	      model.addAttribute("FloorColorList", FloorColorList);   
	      
	      //기본 선택 항목을 설정
	      interiors.setIstyle("black");
	      
	      //dtype 드롭다운리스트의 항목을 추가할 목적
	      List<String> DentalType = new ArrayList<>();
	      DentalType.add("normal");
	      DentalType.add("infant");
	      DentalType.add("special");
	      model.addAttribute("DentalType", DentalType);   
	      
	      return "interior/interior";
	}
	
	@PostMapping("/interior/GointeriorDataUpload")
	public String interiorDataUpload(InteriorDto interior) {
		  log.info("너 뭐.. 돼/");
		  log.info(interior.getIno());
		  log.info(interior.getItype());
		  log.info(interior.getIsummary());
		  
		  log.info(interior.getImImgPath());
		  log.info(interior.getIMainImg().getOriginalFilename());
		  if (!interior.getIMainImg().isEmpty()) {
			  log.info("너.. 뭐 돼..?");
			  interior.setImImgPath(interior.getIMainImg().getOriginalFilename());
				File file = new File("C:/Temp/portfolio/" + interior.getImImgPath());
				try {
					interior.getIMainImg().transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
				} 
				interiorService.insertInterior(interior);    }
		 return "interior/interior";
	}
	
}
