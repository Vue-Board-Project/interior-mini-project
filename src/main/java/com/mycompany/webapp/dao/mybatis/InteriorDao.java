package com.mycompany.webapp.dao.mybatis;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.mycompany.webapp.dto.interior.InteriorDto;

@Mapper
public interface InteriorDao {
	//인테리어 insert
	public int insertInterior(InteriorDto interior);
	//포폴 리스트
	public List<InteriorDto> interiorList();
	//포폴 최신순
	public List<InteriorDto> interiorListNew();
	//포폴 과거순
	public List<InteriorDto> interiorListPast();
	//포폴 인기순
	public List<InteriorDto> interiorListPopular();
	public int interiorCnt();
}
