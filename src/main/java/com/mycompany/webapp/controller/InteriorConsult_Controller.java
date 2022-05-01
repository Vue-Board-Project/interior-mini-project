package com.mycompany.webapp.controller;

import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialException;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.webapp.dto.product.ProductDto;
import com.mycompany.webapp.service.ProductConsultService;

import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
public class InteriorConsult_Controller {
	
	//제품 상담을 위한 service
	@Resource
	private ProductConsultService productConsultService;
	
	@GetMapping("/interior_consult/detail_consultation")
	public String detailConsultaion() {
		return "/interior_consult/detail_consultation";
	}
	
	@GetMapping("/interior_consult/quick_consultation")
	public String quickConsultation() {
		return "/interior_consult/quick_consultation";
	}

	@GetMapping("/interior_consult/quipment_buy_request_consult")
	public String quipmentBuyRequestConsult(String modelName, Model model) throws Exception{
		log.info(modelName);
		
		ProductDto product = productConsultService.getProduct(modelName);
		String oname = product.getPattachoname();
		String sname = product.getPattachsname();
		String type = product.getPattachtype();
		log.info(oname + " / " + sname + " / " + type );
		model.addAttribute("product", product);
		//이미지 파일
		List<Map<String, Object>> resultList = null;
		List<String> paramList = new ArrayList<String>();
		
		/*try {
			resultList.add(productConsultService.blobTest(product.getMainimage(), oname));
			
			Iterator<Map<String, Object>> itr = resultList.iterator();
			
			while(itr.hasNext()){
				Map<String,Object> element = (Map<String, Object>) itr.next();
				byte[] encoded = org.apache.commons.codec.binary.Base64.encodeBase64((byte[])element.get("file"));
				String encodedString = new String(encoded);
				element.put("base64", encodedString);
				paramList.add(encodedString);
				
				model.addAttribute("images",paramList);
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		*/
		
		return "/interior_consult/quipment_buy_request_consult";
	}
	

	@GetMapping("/interior_consult/remodeling_price")
	public String remodelingPrice() {
		return "/interior_consult/remodeling_price";
	}
	
}
