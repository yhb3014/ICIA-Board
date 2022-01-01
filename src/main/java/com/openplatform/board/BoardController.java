package com.openplatform.board;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.openplatform.board.dto.BfileDto;
import com.openplatform.board.dto.ReplyDto;
import com.openplatform.board.service.BoardService;

@Controller
public class BoardController {

	private static final Logger logger = 
			LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private BoardService bServ;
	
	private ModelAndView mv;
	
	@GetMapping("list")
	public ModelAndView boardList(Integer pageNum) {
		//pageNum에 들어오는 데이터
		// 1. null - url에 페이지번호를 작성하지 않을 때
		//			첫번째 페이지가 보여지는 상황.(로그인한 직후)
		// 2. 페이지 번호 숫자.
		logger.info("boardList()");
		
		//DB에서 게시글을 가져와서 페이지로 전달.
		mv = bServ.getBoardList(pageNum);

		return mv;
	}
	
	@GetMapping("writeFrm")
	public String writeFrm() {
		logger.info("writeFrm()");
		
		return "writeFrm";
	}
	
	//멀티파트 데이터를 처리할 경우 첫번째 매개변수는 
	//MultipartServletRequest 여야 한다.
	@PostMapping("boardWrite")
	public String boardWrite(MultipartHttpServletRequest multi,
			RedirectAttributes rttr) {
		logger.info("boardWrite()");
		
		String view = bServ.boardInsert(multi, rttr);
		
		return view;
	}
	
	@GetMapping("contents")
	public ModelAndView boardContents(Integer bnum) {
		logger.info("boardContents() - bnum : " + bnum);
		
		//서비스에서 mv 내용을 만들어서 보내주도록 처리
		mv = bServ.getContents(bnum);
		
		return mv;
	}
	
	@GetMapping("download")
	public void fileDownLoad(BfileDto bfile, 
			HttpServletResponse res) {
		logger.info("fileDownLoad() - oriname : " 
			+ bfile.getBf_oriname());
		
		bServ.fileDownload(bfile, res);
	}
	
	@PostMapping(value = "replyIns",
			produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String, List<ReplyDto>> replyInsert(ReplyDto reply){
		logger.info("replyInsert()");
		
		Map<String, List<ReplyDto>> rmap = bServ.replyInsert(reply);
		
		return rmap;//이 때 Map -> json으로 변경됨(jackson 라이브러리)
	}
	
	@GetMapping("updateFrm")
	public ModelAndView updateFrm(int bnum, 
			RedirectAttributes rttr) {
		logger.info("updateFrm() - bnum: " + bnum);
		
		mv = bServ.updateFrm(bnum, rttr);
		
		return mv;
	}
	
	@PostMapping("boardUpdate")
	public String boardUpdate(MultipartHttpServletRequest multi,
			RedirectAttributes rttr) {
		logger.info("boardUpdate()");
		String view = bServ.boardUpdate(multi, rttr);
		
		return view;
	}
	
	@PostMapping(value = "delfile",
			produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String, List<BfileDto>> delFile(String sysname, int bnum) {
		logger.info("delFile()");
		
		Map<String, List<BfileDto>> rMap = null;
		
		rMap = bServ.fileDelete(sysname, bnum);
		
		return rMap;
	}
	
	@GetMapping("delete")
	public String boardDelete(int bnum, 
			RedirectAttributes rttr) {
		logger.info("boardDelete() - bnum: " + bnum);
		
		String view = bServ.boardDelete(bnum, rttr);
		
		return view;
	}
}//class end








