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
    public String joinAction(MemberVo vo) throws Exception{
		
		try {
		int count = memberService.count(vo); // 똑같은 아이디로 가입되어잇는지 확인
		
		if(count != 0) {
			return "redirect:/member/join.do?message=error"; // 이미 있는 아이디이면 메세지랑 같이 전달해줌
		}
		
		} catch (Exception e) {
           e.printStackTrace();
           return "login/join";
		}
		
		
		
		
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
	public String loginAction(MemberVo vo,HttpSession session) throws Exception{
		// 이름을 받아옴
	
		
		
		
		try {
			String name = memberService.loginAction(vo);
			if(name !=null) {
				System.out.println("22");
				session.setAttribute("memberid", vo.getMemberid());
				session.setAttribute("name", name);
			}else {
				System.out.println("3");
				return "login/login";
			}
			System.out.println("11");
			return "redirect:/";
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return "login/login";
		}
		
	
		
	}
	
	
}
