package com.mycompany.webapp.dao.mybatis;

import java.util.List;

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

	@Override
	public List<InteriorDto> interiorListPast() {
		return sqlSession.selectList("com.mycompany.webapp.dao.mybatis.InteriorDao.interiorListPast");
	}

	@Override
	public List<InteriorDto> interiorListPopular() {
		return sqlSession.selectList("com.mycompany.webapp.dao.mybatis.InteriorDao.interiorListPopular");
	}

	@Override
	public InteriorDto detailPortfolio(int ino) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateCnt(int ino) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<InteriorDto> recommendStyle(int ino, String istyle) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<InteriorDto> recommendArea(int ino, String darea) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
