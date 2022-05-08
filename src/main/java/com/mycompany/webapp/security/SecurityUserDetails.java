package com.mycompany.webapp.security;

import java.util.List;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class SecurityUserDetails extends User {
	private String name; //이름
	private String phone; //대표번호
	private String postcode; //우편번호
	private String address; //주소
	private String addressDetail; //상세주소
	private String crn; //사업자등록번호
	
	public SecurityUserDetails(
			String email, 
			String password, 
			String name,
			String phone,
			String postcode,
			String address,
			String addressDetail,
			String crn,
			List<GrantedAuthority> mauthorities,
			boolean enabled) {
		super(email, password, enabled, true, true, true, mauthorities);
		this.name=name;
		this.phone=phone;
		this.postcode=postcode;
		this.address=address;
		this.addressDetail=addressDetail;
		this.crn=crn;
		
	}
	public String getName() {
		return name;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getPostcode() {
		return postcode;
	}
	
	public String getAddress() {
		return address;
	}
	
	public String getAddressDetail() {
		return addressDetail;
	}
	
	public String getCrn() {
		return crn;
	}
}

