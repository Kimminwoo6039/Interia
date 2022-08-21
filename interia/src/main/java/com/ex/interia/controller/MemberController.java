package com.ex.interia.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ex.interia.service.CartService;
import com.ex.interia.service.MemberService;
import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.OrderVo;

@Controller
@RequestMapping("/member/**")
public class MemberController {

	
	public MemberService memberService;
	public CartService cartService;
	
	@Autowired
	public MemberController(MemberService memberService,CartService cartService) {
		this.memberService = memberService;
		this.cartService = cartService;
	}
	
	
	@RequestMapping("join.do")
	public String kj() {
		return "login/join";
	}
	
	
	@RequestMapping("joinAction.do")
    public String joinAction(MemberVo vo) throws Exception{
		
		try {
		
		
	    int result = memberService.joinAction(vo);
		
		
	    if(result==1) {
	    	return "login/login";
	
		
	    }
		
		} catch (Exception e) {
           e.printStackTrace();
           return "redirect:/member/join.do?message=error";
		}
		
		
		
		
		return "login/login";
	
		
	}
	
	
	@RequestMapping("login.do")
	public String login() {
		return "login/login";
	}
	
	@RequestMapping("loginAction.do")
	public String loginAction(MemberVo vo,HttpSession session) throws Exception{
		// �씠由꾩쓣 諛쏆븘�샂
	
		
		
		
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
	
	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate(); //세션삭제
		return "redirect:/";
	}
	
	
	
	
	
	
}
