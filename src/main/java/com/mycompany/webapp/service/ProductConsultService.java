package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dto.UsersDto;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class ProductConsultService {
	
	@Resource
	private UsersDao usersDao;
	
	public UsersDto getUser(String email) {
		return usersDao.selectByEmail(email);
	}
}
