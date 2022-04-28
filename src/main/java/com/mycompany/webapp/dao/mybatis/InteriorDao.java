package com.mycompany.webapp.dao.mybatis;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.interior.InteriorDto;

@Mapper
public interface InteriorDao {
	public int insertInterior(InteriorDto interior);
}
