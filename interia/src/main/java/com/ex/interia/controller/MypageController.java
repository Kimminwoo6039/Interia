package com.ex.interia.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ex.interia.service.CartService;
import com.ex.interia.service.MemberService;
import com.ex.interia.service.OrderService;
import com.ex.interia.vo.DeliveryVo;
import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.OrderVo;

@Controller
@RequestMapping("/mypage/**")
public class MypageController {

	
	public MemberService memberService;
	public CartService cartService;
	public OrderService orderService;
	
	@Autowired
	public MypageController(MemberService memberService,CartService cartService,OrderService orderService) {
		this.memberService = memberService;
		this.cartService = cartService;
		this.orderService = orderService;
	}
	
	
	@RequestMapping("main.do")
	public String main() {
		return "mypage/main";
	}
	
	
	@RequestMapping("main1.do")
	public ModelAndView main(DeliveryVo vo,ModelAndView mav,HttpSession session) {
		
		String memberid = (String) session.getAttribute("memberid");
		
		System.out.println("vo="+vo.getDelivery_state());
		
		vo.setOrder_id(memberid);
		
		
		if(memberid==null) {
			mav.setViewName("login/login");
		}else {
			
			
			
			
			List<OrderVo> list = orderService.list(vo); // 리스트 뽑기
			
			int count1 = orderService.abc1(memberid); //배송상태값
			int count2 = orderService.abc2(memberid); //배송상태값
			int count3 = orderService.abc3(memberid); //배송상태값
			int count4 = orderService.abc4(memberid); //배송상태값
			int count5 = orderService.abc5(memberid); //배송상태값
			int count6 = orderService.abc6(memberid); //배송상태값
		
			
			mav.addObject("list", list);
			mav.addObject("count1",count1);
			mav.addObject("count2",count2);
			mav.addObject("count3",count3);
			mav.addObject("count4",count4);
			mav.addObject("count5",count5);
			mav.addObject("count6",count6);
			
			mav.setViewName("mypage/main");
			
		}
		
		return mav;
	}
	

	
}
