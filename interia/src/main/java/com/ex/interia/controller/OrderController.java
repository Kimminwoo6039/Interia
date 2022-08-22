package com.ex.interia.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ex.interia.service.CartService;
import com.ex.interia.service.MemberService;
import com.ex.interia.service.OrderService;
import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.OrderVo;

@Controller
@RequestMapping("/order/*")
public class OrderController {

	
	public OrderService orderService;
	
	
	@Autowired
	public OrderController(OrderService orderService) {
		this.orderService = orderService;
	}
	
	@RequestMapping("update.do")
	public String pay(OrderVo vo,HttpServletRequest request) throws Exception {
		
		
		try {
			 orderService.pay(vo); 
		} catch (Exception e) {
              e.printStackTrace();
              return "cart/cart_order";
		}
		
		
		
		request.setAttribute("name", vo.getOrder_product());
		request.setAttribute("sum", vo.getOrder_sum());
		
		return "/cart/pay";
	}
	
	
	
	
	
	
	
}
