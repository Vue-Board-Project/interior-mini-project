package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import com.mycompany.webapp.dao.mybatis.ConsultDao;
import com.mycompany.webapp.dao.mybatis.ProductConsultDao;
import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dto.UsersDto;
import com.mycompany.webapp.dto.interior.ConsultDetailDto;
import com.mycompany.webapp.dto.interior.ConsultRemodelingDto;
import com.mycompany.webapp.dto.interior.MainConsultDto;
import com.mycompany.webapp.dto.product.ProductDto;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class ConsultService {//상담 신청 서비스
	
	public enum ConsultResult{
		FAST_FAIL, SUCCESS, DETAIL_FAIL
	}
	
	@Resource
	private ConsultDao consultDao;//상담 dao	
	@Resource
	private ProductConsultDao productConsultDao;	
	@Resource
	private UsersDao usersDao;
	
	//상세 상담 추가
	@Transactional
	public  ConsultResult detailConsultTrans(MainConsultDto mainConsultDto, ConsultDetailDto consultDetailDto) {
		log.info("실행");
		//빠른 상담
		int consult1 = consultDao.insertMainConsult(mainConsultDto);
		if(consult1 != 1) {
			return ConsultResult.FAST_FAIL;
		}
		
		log.info("부모키 : " + mainConsultDto.getConsultNo());
		//상세 상담
		consultDetailDto.setConsultNo(mainConsultDto.getConsultNo());
		int consult2 = consultDao.insertDetailConsult(consultDetailDto);
		if(consult1 != 1) {
			return ConsultResult.DETAIL_FAIL;
		}
		return ConsultResult.SUCCESS;
	}
	
	//빠른 상담 
	public int requstQuickConsult(MainConsultDto mainConsultDto) {
		consultDao.insertMainConsult(mainConsultDto);
		log.info("추가된 상담 번호 : " + mainConsultDto.getConsultNo());
		
		return mainConsultDto.getConsultNo();//리모델링에 보낼 상담번호
	}
	//리모델링 상담을 위한 공간 선택 저장
	public void requestConsultRemodeling(MainConsultDto mainConsultDto, int num) {
		
		for(String room : mainConsultDto.getConsultRoomList()) {
			ConsultRemodelingDto crd = new ConsultRemodelingDto();
			crd.setConsultNo(num);
			crd.setConsultRoom(room);
			consultDao.insertRemodelingConsult(crd);
		}
	}
	//장비 select
	public ProductDto getProduct(String modelNumber) {
		
		return productConsultDao.selectProduct(modelNumber);
	}
	
	//현재 로그인 유저 정보 가져오기
	public UsersDto loginUser(String email) {
		return usersDao.selectByEmail(email);
	}
	

}
