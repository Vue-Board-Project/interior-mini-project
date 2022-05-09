package com.mycompany.webapp.service;

import java.util.List;
import java.util.Map;

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
	
	/*	@Autowired @Qualifier("interiorDaoImpl")
		private InteriorDao interiorDao2;*/
	
	public void insertInterior(InteriorDto interior) {
		interiorDao.insertInterior(interior);
	}
	
	//포폴 최신순
	public List<InteriorDto> interiorList(){
		return interiorDao.interiorList();
	}
		
	//인테리어,포폴 상세창
	public InteriorDto detailPortfolio(int ino) {
		return interiorDao.detailPortfolio(ino);
	}
	
	//같은 스타일 추천
	public List<InteriorDto> recommendStyle(int ino, String istyle) {
		return interiorDao.recommendStyle(ino, istyle);
	}
	
	//같은 평수 추천
	public List<InteriorDto> recommendArea(int ino, String darea) {
		return interiorDao.recommendArea(ino, darea);
	}
	
	//포폴 필터링
	public List<InteriorDto> interiorFilter(Map<String,Object>param){
		return interiorDao.interiorFilter(param);
	}
	
	//조회수
	public int interiorCnt() {
		return interiorDao.interiorCnt();
	}
	
	//조회수 업뎃
	public int updateCnt(int ino) {
		return interiorDao.updateCnt(ino);
	}
	
	//모델 최신순 리스트
	public List<InteriorDto> modelList() {
		return interiorDao.modelList();
	}
	
	//모델 필터링
	public List<InteriorDto> modelFilter(Map<String, Object> param) {
		return interiorDao.modelFilter(param);
	}
	
	//모델 조회순 리스트
	public List<InteriorDto> interiorBestList() {
		return interiorDao.interiorBestList();
	}
}
