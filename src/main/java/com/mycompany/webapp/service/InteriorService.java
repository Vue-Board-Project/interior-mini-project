package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.mybatis.InteriorDao;
import com.mycompany.webapp.dto.interior.InteriorDto;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class InteriorService {//인테리어 서비스
	
	@Resource
	private InteriorDao interiorDao;
	
	/*public int insertInterior(InteriorDto interior) {
		interiorDao.insertInterior(interior);
		return interior;
	}*/
}
