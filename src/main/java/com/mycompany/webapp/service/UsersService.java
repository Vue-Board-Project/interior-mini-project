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
		SUCCESS, FAIL_MID, FAIL_MPASSWORD, FAIL
	}
	
	//?
	@Resource
	private UsersDao usersDao;
	
	//회원가입
	public JoinResult join(UsersDto users) {
		UsersDto dbUsers = usersDao.selectByEmail(users.getEmail());
		if(dbUsers == null) {
			PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
			users.setPassword(passwordEncoder.encode(users.getPassword()));
			int result = usersDao.insert(users);
			return JoinResult.SUCCESS;
		} else {
			return JoinResult.DUPLICATED;
		}
	}
}
