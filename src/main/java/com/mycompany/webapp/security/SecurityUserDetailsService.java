package com.mycompany.webapp.security;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dto.UsersDto;


@Service
public class SecurityUserDetailsService implements UserDetailsService {
	private static final Logger logger = LoggerFactory.getLogger(SecurityUserDetailsService.class);
	
	@Resource
	private UsersDao usersDao;	
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		
		UsersDto users = usersDao.selectByEmail(email); 
		if(users == null) {
			throw new UsernameNotFoundException(email);
		}
		
		List<GrantedAuthority> authorities = new ArrayList<>();
		authorities.add(new SimpleGrantedAuthority(users.getRole()));
		
		SecurityUserDetails userDetails = new SecurityUserDetails(
				users.getEmail(),
				users.getPassword(),
				users.getName(),
				users.getPhone(),
				users.getPostcode(),
				users.getAddress(),
				users.getAddressDetail(),
				users.getCrn(),
				authorities);
		
		return userDetails;
	}
}

