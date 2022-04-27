package com.mycompany.webapp.service;

import javax.annotation.Resource;

import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dto.UsersDto;

import lombok.extern.log4j.Log4j2;

@Service
@Log4j2
public class UsersService {
	public enum JoinResult{
		SUCCESS, FAIL, DUPLICATED
	}
	
	public enum LoginResult{
		SUCCESS, FAIL_EMAIL, FAIL_PASSWORD, FAIL
	}

	
	@Resource
	private UsersDao usersDao;
	
	//회원가입
	public JoinResult join(UsersDto users) {
		log.info("실행");
		UsersDto dbUsers = usersDao.selectByEmail(users.getEmail());
		if(dbUsers == null) {
			log.info("null값인 경우 실행");
			log.info(users.getEmail());
			log.info(users.getPassword());
			log.info(users.getCrn());
			PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
			users.setPassword(passwordEncoder.encode(users.getPassword()));
			int result = usersDao.insert(users);
			return JoinResult.SUCCESS;
		} else {
			return JoinResult.DUPLICATED;
		}
	}
	
	public LoginResult login(UsersDto users) {
		UsersDto dbUsers = usersDao.selectByEmail(users.getEmail());
		if(dbUsers == null) {
			return LoginResult.FAIL_EMAIL;
		} else {
			PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
			if(passwordEncoder.matches(users.getPassword(), dbUsers.getPassword())) {
				return LoginResult.SUCCESS;
			} else {
				return LoginResult.FAIL_PASSWORD;
			}
		}
	}
}
