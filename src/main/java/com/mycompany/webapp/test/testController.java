package com.mycompany.webapp.test;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping(value = "/test")
@Log4j2
public class testController {

	@GetMapping("/imageInsert")
	public String goImages() {
		return "/test/imageInsert";
	}

	// 일부러 길어져도 주석 오지게 달았습니다. 읽으면셔 이해하세요.

	/* 첨부 파일 업로드 */
	// 이미지 파일 이름이 한글인 경우 업로드는 정상적으로 수행을 하겠지만 뷰로 반환되는 이미지 정보의 파일 이름(fileName) 데이터
	// 깨지는거 방지
	@PostMapping(value = "/uploadAjaxAction", produces = "application/json; charset=UTF-8;")
	public ResponseEntity<List<AttachImageDto>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {

		log.info("uploadAjaxActionPOST..........");
		/*  전달 받은 파일이 이미지 인지 아닌지 체크 */
		for (MultipartFile multipartFile : uploadFile) {
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;
			try {
				type = Files.probeContentType(checkfile.toPath());
				log.info("MIME TYPE : " + type);
			} catch (IOException e) {
				e.printStackTrace();
			}
			if (!type.startsWith("image")) {// 이미지가 이닌 경우 400에러 생성
				List<AttachImageDto> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);

			}
		}

		// 파일 제대로 들어왔는지 확인
		for (MultipartFile multipartFile : uploadFile) {
			log.info("-----------------------------------------------");
			log.info("파일 이름 : " + multipartFile.getOriginalFilename());
			log.info("파일 타입 : " + multipartFile.getContentType());
			log.info("파일 크기 : " + multipartFile.getSize());
		}

		// 오늘 날짜의 'yyyy/MM/dd ' 형식의 String 데이터를 얻기
		/*SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str = sdf.format(date);
		String datePath = str.replace("-", File.separator);*/

		// 업로드를 수행하는 url 매핑 메서드(uploadAjaxActionPOST)에 파일을 저장할 기본적 경로
		String uploadFolder = "C:\\Temp\\product\\";

		

		/* 이미저 정보 담는 객체 */
		List<AttachImageDto> list = new ArrayList<AttachImageDto>();

		for (MultipartFile multipartFile : uploadFile) {

			// 이미지 정보 객체
			AttachImageDto dto = new AttachImageDto();
			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();
			dto.setFileName(uploadFileName);
			dto.setUploadPath(uploadFolder);
			/* uuid 적용 파일 이름 
			String uuid = UUID.randomUUID().toString();
			dto.setUuid(uuid);*/


			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadFolder, uploadFileName);

			/* 파일 저장 */
			try {
				multipartFile.transferTo(saveFile);

				/*썸네일 이미지 만들기 -> 파일 
				ImageIO: 이미지를 읽어오거나 생성(작성?) 할 수 있도록 도와주는 메서드
				BufferedImage : 이미지 데이터를 처리하거나 조작에 필요한 값과 메서드를 제공
				Graphics2D의 : 그림을 그리는데 필요로 한 설정값과 메서드를 제공하는 클래스*/
				File thumbnailFile = new File(uploadFolder, "s_" + uploadFileName);

				// 원본 이미지 파일을 BufferedImage 타입으로 변경
				// 1. 도화지 생성
				BufferedImage bo_image = ImageIO.read(saveFile);
				// 비율
				double ratio = 3;
				// 넓이 높이
				int width = (int) (bo_image.getWidth() / ratio);
				int height = (int) (bo_image.getHeight() / ratio);
				BufferedImage bt_image = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);// 개변수로 '넓이',
																										// '높이', '생성될
																										// 이미지의 타입'을 작성
				// 2. 도화지에 그림그리기
				Graphics2D graphic = bt_image.createGraphics();
				graphic.drawImage(bo_image, 0, 0, width, height, null);
				ImageIO.write(bt_image, "jpg", thumbnailFile);

			} catch (Exception e) {
				e.printStackTrace();
			}
			list.add(dto);

		} // for

		/*
		 * + ResponseEntity를 통해서 뷰(view)로 http 상태 코드가 200이고 http Body에 이미지 정보가 담긴 List 객체를 전송
		 * 뷰(view)에서 ajax를 통해 요청할 때 JSON타입의 데이터를 요청을 하였습니다. 
		 * 따라서 뷰로 List객체를 반환하는 과정에서 List객체를 JSON 형식의 문자열로 변환을 해주어야 합니다. 
		 * 이때 클래스 패스(classpath)에 Jackson이 존재해야만 JSON형식으로 스프링이 변환을 시켜줍니다. 
		 * 클래스패스(classpath)에 Jackson을 추가시켜주기 위해서 우리는 Jackson-databind 라이브러리를 추가시켜주었습니다. 
		 * Jackson-databind 라이브러리는 jackson-annotations, jackson-core, jackson-datatbind를 클래스 패스에 자체적으로 추가시켜주기 때문입니다.
		 * */
		// @ResponseBody 어노테이션과 ResponseEntity 차이점
		// --> ResponseEntity의 경우 http response 메시지의 header와 status(상태 코드)를 조작할 수 있다

		// Http의 바디에 추가될 데이터는 List <AttachImageVO>이고 상태 코드가 OK(200)인 ReseponseEntity 객체가
		// 생성
		ResponseEntity<List<AttachImageDto>> result = new ResponseEntity<List<AttachImageDto>>(list, HttpStatus.OK);
		return result;

	}

	/* 1. 파라미터로 전달받은 '파일 경로'와 '파일 이름'을 활용하여 대상 이미지 파일을 File 객체로 생성
	 * 2. 해당 File 객체를 활용하여 MIME TYPE에 대한 정보를 알아냄
	 * 3. ResponseEntity에 대상 이미지 데이터를 복사하여 body에 추가
	 * 4. header의 'Content Type'에 앞서 얻어낸 MIME TYPE으로 수정 해준 후 ResponseEntity 객체를 호출한 뷰(view)로 전송
	 * */
	// 받은 파일 다시 뷰로 전송
	// url의 경로를 통해 변수와 변수 값을 부여할 수 있도록 GetMapping 어노테이션
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName) {
		// 반환 타입 : ResponseEntity 객체를 통해 body에 byte [] 데이터를 보내 / 파라미터 : '파일 경로' + '파일
		// 이름'을 전달받아
		log.info(" getImage()..........");
		File file = new File(fileName);
		ResponseEntity<byte[]> result = null;

		try {

			HttpHeaders header = new HttpHeaders();
			header.add("Content-type", Files.probeContentType(file.toPath()));// 대상 파일의 MIME TYPE을 부여
			// 대상 이미지 파일, header 객체, 상태 코드를 인자 값으로 부여한 생성자를 통해 ResponseEntity 객체를 생성하여 앞서
			// 선언한 ResponseEntity 참조 변수에 대입
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			// 대상 파일을 복사하여 Byte 배열로 반환해주는 클래스

		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}

	/* 이미지 파일 삭제 */
	/* 이미지 파일 삭제를 위해 가장 핵심이 되는 메서드는 File 클래스의 delete()입니다. 
	이 메서드를 사용하기 위해선 File 클래스를 인스턴스화 하여 사용해야 합니다. 
	삭제될 파일을 대상으로 하는 File 객체를 생성하기 위해선 생성자에  대상 파일의 경로인 문자열 데이터를 
	파라미터로 부여해야 합니다. 따라서 삭제할 대상의 파일의 경로가 필요로 하기 때문에 url 매핑 메서드의 
	파라미터로 파일경로(fileName)을 부여할 것입니다.
	
	* 파일 삭제를 수행하는 url 매핑 메서드는 뷰에서 비동기 방식으로 요청을 하고 수행 결과를 요청하기 때문에 비동기 요청을 수행하도록 작성해주어야 합니다.*/

	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName) {

		log.info("deleteFile........" + fileName);
		File file = null;
		try {
			// 썸네일 삭제
			file = new File("c:\\Temp\\product\\" + URLDecoder.decode(fileName, "UTF-8"));
			file.delete();
			/* 원본 파일 삭제 */
			String originFileName = file.getAbsolutePath().replace("s_", "");
			log.info("originFileName : " + originFileName);
			file = new File(originFileName);
			file.delete();

		} catch (Exception e) {

			e.printStackTrace();
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);

		}
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}

}
