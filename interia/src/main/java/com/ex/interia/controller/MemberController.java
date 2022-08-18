package com.ex.interia.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ex.interia.service.MemberService;
import com.ex.interia.vo.MemberVo;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	
	public MemberService memberService;
	
	@Autowired
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	
	@RequestMapping("join.do")
	public String kj() {
		return "login/join";
	}
	
	
	@RequestMapping("joinAction.do")
    public String joinAction(MemberVo vo) {
		// result = SQL 문 실행결과에 따라 1,0 의 값을 받기
		int result = memberService.joinAction(vo);
		
		// 정상적으로 데이터베이스 저장
	    if(result==1) {
	    	return "login/login";
	    }else{
	    	return "login/join";
	    }
		
	}
	
	
	@RequestMapping("login.do")
	public String login() {
		return "login/login";
	}
	
	@RequestMapping("loginAction.do")
	public String loginAction(MemberVo vo,HttpSession session) {
		// 이름을 받아옴
		String name = memberService.loginAction(vo);
		
		if(name !=null) {
			session.setAttribute("memberid", vo.getMemberid());
			session.setAttribute("name", name);
		}else {
			return "login/login";
		}
		
		return "redirect:/";
	}
	
	
}
