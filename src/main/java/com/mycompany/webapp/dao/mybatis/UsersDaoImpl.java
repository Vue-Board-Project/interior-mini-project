package com.mycompany.webapp.dao.mybatis;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.webapp.dto.UsersDto;

@Repository
public class UsersDaoImpl implements UsersDao {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insert(UsersDto users) {
		return 0;
	}

	@Override
	public UsersDto selectByEmail(String email) {
		return null;
	}

	@Override
	@Transactional
	public int updatePW(UsersDto users) throws Exception {
		return sqlSession.update("com.mycompany.webapp.dao.mybatis.UsersDao.updatePW", users);
	}

}
