package com.openplatform.board.dao;

import java.util.List;
import java.util.Map;

import com.openplatform.board.dto.BfileDto;
import com.openplatform.board.dto.BoardDto;
import com.openplatform.board.dto.ReplyDto;

public interface BoardDao {
	//게시글 목록 가져오기
	public List<BoardDto> getList(Map<String, Integer> pmap);
	//전체 글 개수 구하기
	public int getBoardCnt();
	//게시글 저장
	public void boardInsert(BoardDto board);
	//파일 정보 저장
	public void fileInsert(Map<String, String> fmap);
	//글내용 가져오기
	public BoardDto getContents(Integer bnum);
	//파일 목록 가져오기
	public List<BfileDto> getBfList(Integer bnum);
	//댓글 목록 가져오기
	public List<ReplyDto> getReList(Integer bnum);
	//댓글 저장
	public void replyInsert(ReplyDto reply);
	//조회수 증가
	public void viewUpdate(Integer bnum);
	//게시글 업데이트
	public boolean boardUpdate(BoardDto board);
	//개별 파일 삭제(게시글 수정 시)
	public boolean fileDelete(String sysName);
	//게시글의 댓글 삭제
	public boolean replyDelete(Integer bnum);
	//게시글의 파일 삭제(같은 게시물의 모든 파일 삭제)
	public boolean filesListDelete(Integer bnum);
	//게시글 삭제
	public boolean boardDelete(Integer bnum);
}





