package com.mycompany.webapp.dao.mybatis;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.UsersDto;

import lombok.extern.log4j.Log4j2;

@Repository
@Log4j2
public class UsersDao {
	
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	
	//users insert
	public int insert(UsersDto users) {
		int rows = sqlSessionTemplate.insert("com.mycompany.webapp.dao.mybatis.UsersDao.insert",users);
			return rows;
	}
	
	//users email select
	public UsersDto selectByEmail(String email) {
		log.info("실행");
		UsersDto usersDto = sqlSessionTemplate.selectOne("com.mycompany.webapp.dao.mybatis.UsersDao.selectByEmail",email);
		return usersDto;
	}
}
