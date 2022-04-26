package bkdto;

import java.sql.Date;

import lombok.Data;

@Data
public class MainConsultDto {
	private int consultNo;//접수번호
	private String consultAcreage;//평수
	private String consultInteriorStyle;//스타일
	private String consultRequest;//요청사항
	private Date constructionDate;//시공일자
	private Date consultDate;//상담일자
	private String consult_post;
	private String consult_address;
	//users dto 불러오기
	//interior dto 불러오기
}