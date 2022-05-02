package com.mycompany.webapp.mapper;

import java.util.List;

//첨부파일 관련 요청 처리 메서드
public interface AttachMapper {
	/* 이미지 데이터 반환 */
	public List<AttachMapper> getAttachList(String modelNumber);
}
