package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.mybatis.ConsultDao;
import com.mycompany.webapp.dto.interior.ConsultRemodelingDto;
import com.mycompany.webapp.dto.interior.MainConsultDto;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class ConsultService {//상담 신청 서비스
	
	@Resource
	private ConsultDao consultDao;//상담 dao
	
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

}
