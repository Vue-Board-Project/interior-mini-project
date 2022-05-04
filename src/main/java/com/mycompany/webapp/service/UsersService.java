package com.mycompany.webapp.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.webapp.dao.mybatis.UsersDao;
import com.mycompany.webapp.dao.mybatis.UsersDaoImpl;
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
	
	public enum FindPWResult{
		SUCCESS, FAIL
	}

	
	@Resource(name="usersDao")
	private UsersDao usersDao;
	
	@Autowired @Qualifier("usersDaoImpl")
	private UsersDaoImpl usersDao2;
	
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
	
	/*public LoginResult login(UsersDto users) {
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
	}*/
	
	//이메일 발송
	public void sendmail(UsersDto users, String div, String rpw) {
		log.info(users.getEmail());
		log.info(users.getName());
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.gmail.com"; //네이버 이용시 smtp.naver.com
		String hostSMTPid = "o.molaire99@gmail.com";
		String hostSMTPpwd = "Omolaire123";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "o.molaire99@gmail.com";
		String fromName = "오몰레어";
		String subject = "";
		String msg = "";

		if(div.equals("findPassword")) {
			subject = "오몰레어 임시 비밀번호 입니다. 마이페이지  회원정보 수정에서 비밀번호를 수정해주세요";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += users.getName() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += rpw + "</p></div>";
		}

		// 받는 사람 E-Mail 주소
		String mail = users.getEmail();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465); //네이버 이용시 587

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}
	
	//비밀번호 찾기
	@Transactional
	public FindPWResult findPW(HttpServletResponse response, UsersDto users) throws Exception {
		log.info("실행");
		log.info(users.getEmail());
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// 가입된 이메일이 없으면
		if(usersDao.selectByEmail(users.getEmail()) == null) {
			log.info("등록되지 않은 이메일입니다.");
			return FindPWResult.FAIL;
			//out.print("등록되지 않은 이메일입니다.");
			//out.close();
		} else {
			UsersDto usersDto = usersDao.selectByEmail(users.getEmail());
			log.info(usersDto.getName());
			log.info("임시 비밀번호 생성");
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			//암호화 되기전 비번
			String realPW = pw; 
			PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
			users.setPassword(passwordEncoder.encode(realPW));
			//users.setPassword(pw);
			// 비밀번호 변경
			usersDao2.updatePW(users);
			// 비밀번호 변경 메일 발송
			sendmail(usersDto, "findPassword", realPW);

			//out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			//out.close();
			return FindPWResult.SUCCESS;
		}
	}
	
}
