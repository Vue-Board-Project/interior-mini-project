package pororydto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;
@Data
public class AfterServiceDto {
	private int receiptNumber;//접수 번호
	private String productName;//제품명
	private String basicSymptoms;//기본증상
	private String detaildeSymptoms;//세부증상 CLOB
	//clob 추후 mybatis에서 resultMap 사용하기
	private Date applicationDate;//신청일
	private MultipartFile asAttachedFile;//첨부파일 BLBO
	private Date scheduledServiceDate;//서비스 예정일
	private ProductDto modelNumber;//모델명 (외래키)
	//private String email;//이메일 (외래키)
}
