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

}
