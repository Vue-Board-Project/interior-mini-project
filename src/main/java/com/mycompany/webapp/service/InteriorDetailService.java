package com.mycompany.webapp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.mybatis.InteriorDetailDao;
import com.mycompany.webapp.dto.interior.InteriorDetailDto;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class InteriorDetailService {
	
	@Resource(name="interiorDetailDao")
	private InteriorDetailDao interiorDetailDao;
	
	@Autowired @Qualifier("interiorDetailDaoImpl")
	private InteriorDetailDao interiorDetailDao2;
	
	public void insertInteriorDetail(InteriorDetailDto interiorDetailDto) {	
		interiorDetailDao.insertInteriorD(interiorDetailDto);
	}
	
	//인테리어 디테일 가져오기
	public List<InteriorDetailDto> selectPortfolio(int ino) {
		log.info(ino);
		return interiorDetailDao.selectPortfolioD(ino);
	}

}
