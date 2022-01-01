package com.openplatform.board.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class BoardDto {
	private int bnum;
	private String btitle;
	private String bcontents;
	private String bid;//작성자 id(외래키)
	private String mname;//작성자 이름
	//오라클의 date 타입과 연동이 잘되는 자료형
	private Timestamp bdate;
	private int bviews;
}

