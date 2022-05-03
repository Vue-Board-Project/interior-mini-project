package com.mycompany.webapp.dao.mybatis;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.interior.InteriorDetailDto;

@Repository
public class InteriorDetailDaoImpl implements InteriorDetailDao{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public int insertInteriorD(InteriorDetailDto interiorDetailDto) {
		return 0;
	}

	@Override
	public List<InteriorDetailDto> selectPortfolioD(int ino) {
		return sqlSession.selectList("com.mycompany.webapp.dao.mybatis.InteriorDetailDao.selectPortfolioD");
	}

}
