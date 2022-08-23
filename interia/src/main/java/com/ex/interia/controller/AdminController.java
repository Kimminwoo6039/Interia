package com.ex.interia.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ex.interia.dao.AdminDao;
import com.ex.interia.service.CartService;
import com.ex.interia.service.MemberService;
import com.ex.interia.service.OrderService;
import com.ex.interia.vo.DeliveryVo;
import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.OrderVo;

@Controller
@RequestMapping("/admin/**")
public class AdminController {

	
	public AdminDao adminDao;
	
	@Autowired
	public AdminController(AdminDao adminDao) {
		this.adminDao = adminDao;
	}
	
	
	@RequestMapping("login.do")
	public String login1(){
		return "login/login2";
	}
	
	
	
	
	
   @RequestMapping("login_check.do")
   public ModelAndView login_check(MemberVo vo,HttpSession session,ModelAndView mav) {
	   
	   
	   String name = adminDao.login(vo);
	   
	   if(name != null) {
		   session.setAttribute("admin_userid", vo.getMemberid());
		   session.setAttribute("admin_name", name);
		   session.setAttribute("userid", vo.getMemberid());
		   session.setAttribute("name", name);
		   
		   mav.setViewName("redirect:/");
		 
	   }else {
		   mav.setViewName("login/login2");
	
	   }
	   return mav;
   }
	
	
	
   
	@RequestMapping("modify.do")
	public ResponseEntity modify(@RequestParam Map<String,String> deliveryMap,
			HttpServletRequest request, HttpServletResponse response
			) throws Exception{
		System.out.println("############ deliveryMap = "+deliveryMap);
		
		adminDao.modify(deliveryMap);
		
		
		
		String message = null;
		ResponseEntity resEntity = null;
		HttpHeaders responseHeaders = new HttpHeaders();
		message = "mod_success";
		resEntity = new ResponseEntity(message,responseHeaders,HttpStatus.OK);
		return resEntity;
		
		
		
	}
	
	
	@RequestMapping("main.do")
	public ModelAndView main(DeliveryVo vo,ModelAndView mav,HttpSession session) {
		String userid = (String) session.getAttribute("userid");
		List<OrderVo> list = adminDao.list(vo);
		
		
		int count1 = adminDao.abc1();
		int count2 = adminDao.abc2();
		int count3 = adminDao.abc3();
		int count4 = adminDao.abc4();
		int count5 = adminDao.abc5();
		int count6 = adminDao.abc6();
		
		  mav.addObject("count1", count1);
         mav.addObject("count2", count2);
         mav.addObject("count3", count3);
         mav.addObject("count4", count4);
         mav.addObject("count5", count5);
         mav.addObject("count6", count6);
		
		mav.setViewName("mypage/adminmain");
		mav.addObject("list", list);
		
		
		
		return mav;
		
	}
   
   
   
   
   
   
   
   
   
	
}
