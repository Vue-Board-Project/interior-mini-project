package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.mybatis.InteriorDao;
import com.mycompany.webapp.dto.interior.InteriorDto;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class InteriorService {//인테리어 서비스
	
	@Resource(name="interiorDao")
	private InteriorDao interiorDao;
	
	@Autowired @Qualifier("interiorDaoImpl")
	private InteriorDao interiorDao2;
	
	public void insertInterior(InteriorDto interior) {
		interiorDao.insertInterior(interior);
	}
	
	public List<InteriorDto> interiorList(){
		return interiorDao2.interiorList();
	}
	
	public int interiorCnt() {
		return interiorDao.interiorCnt();
	}
	
	
	
	
}
