package com.mycompany.webapp.dao.mybatis;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.interior.ConsultRemodelingDto;
import com.mycompany.webapp.dto.interior.MainConsultDto;

@Mapper
public interface ConsultDao {
	public int insertMainConsult(MainConsultDto mainConsultDto);
	public int insertRemodelingConsult(ConsultRemodelingDto consultRemodelingDto);
}
