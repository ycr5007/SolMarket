package com.solmarket.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class NoticeDTO {
	private int noticeNo; // 공지글 번호
	private int marketNo; // 공지 신청 마켓 번호 ( market 테이블 참조 )
	private String noticeTitle; // 제목
	private String noticeContent; // 내용
	private Date noticeDate; // 작성일
	private String noticeCategory; // 공지 구분
}
