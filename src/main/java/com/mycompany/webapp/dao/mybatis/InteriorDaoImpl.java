package com.mycompany.webapp.dao.mybatis;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.interior.InteriorDto;

@Repository
public class InteriorDaoImpl implements InteriorDao{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int insertInterior(InteriorDto interior) {
		return 0;
	}

	@Override
	public List<InteriorDto> interiorList() {
		return sqlSession.selectList("com.mycompany.webapp.dao.mybatis.InteriorDao.interiorList");
	}

	@Override
	public int interiorCnt() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//포폴 최신순 리스트
	@Override
	public List<InteriorDto> interiorListNew() {
		return sqlSession.selectList("com.mycompany.webapp.dao.mybatis.InteriorDao.interiorListNew");
	}
	
	//포폴 과거순 리스트
	@Override
	public List<InteriorDto> interiorListPast() {
		return sqlSession.selectList("com.mycompany.webapp.dao.mybatis.InteriorDao.interiorListPast");
	}

	//포폴 인기순 리스트
	@Override
	public List<InteriorDto> interiorListPopular() {
		return sqlSession.selectList("com.mycompany.webapp.dao.mybatis.InteriorDao.interiorListPopular");
	}

}
