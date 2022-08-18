package com.ex.interia.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ex.interia.service.MemberService;
import com.ex.interia.vo.MemberVo;

@Controller
@RequestMapping("/product/**")
public class ProductController {

	
	public MemberService memberService;
	
	@Autowired
	public ProductController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	
	@RequestMapping("write.do")
	public String kj() {
		return "product/write";
	}
	
	
	
	
	
}
