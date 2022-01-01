package com.openplatform.board.dto;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class ReplyDto {
	private int r_num;//댓글 번호(키)
	private int r_bnum;//게시글 번호(검색)
	private String r_contents;//댓글 내용
	private String r_id;//댓글 작성자 id(로그인 id)
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",
			timezone = "Asia/Seoul")
	private Timestamp r_date;
}
