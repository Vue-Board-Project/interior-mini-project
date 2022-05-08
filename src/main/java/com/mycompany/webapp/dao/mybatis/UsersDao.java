package com.mycompany.webapp.dao.mybatis;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.webapp.dto.UsersDto;

import lombok.extern.log4j.Log4j2;

@Mapper
public interface UsersDao {
	
	//users insert
	public int insert(UsersDto users);
	
	//selectByEmail
	public UsersDto selectByEmail(String email);
	
	//updatePW
	public int updatePW(UsersDto users) throws Exception;

	public void updateFailureCount(String email);

	public int checkFailureCount(String email);

	public void disabledUsername(String email);

	public void clearFailureCount(String email);//email

	public int getIsEnabled(String email);
}
