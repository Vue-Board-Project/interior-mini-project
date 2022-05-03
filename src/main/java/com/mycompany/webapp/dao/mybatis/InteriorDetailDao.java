package com.mycompany.webapp.dao.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.mycompany.webapp.dto.interior.InteriorDetailDto;
import com.mycompany.webapp.dto.interior.InteriorDto;

@Mapper
public interface InteriorDetailDao {
	//상세 내용 insert
	public int insertInteriorD(InteriorDetailDto interiorDetailDto);
	
	public List<InteriorDetailDto> selectPortfolioD(int ino);
}
