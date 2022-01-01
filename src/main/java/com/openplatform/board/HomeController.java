package com.openplatform.board;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.openplatform.board.dto.MemberDto;
import com.openplatform.board.service.MemberService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private MemberService mServ;
	
	@GetMapping("/")
	public String home() {
		logger.info("home()");
		
		return "home";
	}
	
	@GetMapping("joinFrm")
	public String joinFrm() {
		logger.info("joinFrm()");
		
		return "joinFrm";
	}
	
	@GetMapping(value = "idCheck",
			produces = "application/text; charset=utf-8")
	@ResponseBody
	public String idCheck(String mid) {
		logger.info("idCheck() - mid : " + mid);
		
		//이후 해당 아이디로 DB를 검색하는 서비스와 Dao를 활용.
		String res = mServ.idCheck(mid);
		
		return res;
	}
	
	@PostMapping("memInsert")
	public String memberInsert(MemberDto member,
			RedirectAttributes rttr) {
		logger.info("memberInsert()");
		
		String view = mServ.memberInsert(member, rttr);
		
		return view;
	}
	
	@GetMapping("loginFrm")
	public String loginFrm() {
		logger.info("loginFrm()");
		
		return "loginFrm";
	}
	
	@PostMapping("loginProc")
	public String loginProc(MemberDto member, 
			RedirectAttributes rttr) {
		logger.info("loginProc()");
		
		String view = mServ.loginProc(member, rttr);
		
		return view;
	}
	
	@GetMapping("logout")
	public String logout() {
		logger.info("logout()");
		
		String view = mServ.logout();
		
		return view;
	}
	
	
}//class end





