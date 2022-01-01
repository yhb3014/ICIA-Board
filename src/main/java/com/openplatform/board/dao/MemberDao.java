package com.openplatform.board.dao;

import com.openplatform.board.dto.MemberDto;

public interface MemberDao {
	//아이디 중복 체크용
	public int idCheck(String id);
	//회원 가입 처리
	public void memberInsert(MemberDto member);
	//비밀번호 구하기
	public String pwdSelect(String id);
	//회원 정보 구하기
	public MemberDto memberSelect(String id);
	//회원 포인트 수정
	public void mPointUpdate(String id);
}
