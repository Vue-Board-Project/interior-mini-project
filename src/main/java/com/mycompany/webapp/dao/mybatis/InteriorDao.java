package com.mycompany.webapp.dao.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.interior.InteriorDto;

@Mapper
public interface InteriorDao {
	public int insertInterior(InteriorDto interior);
	public List<InteriorDto> interiorList();
}
