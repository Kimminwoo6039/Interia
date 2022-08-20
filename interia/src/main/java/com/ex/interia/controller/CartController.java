package com.ex.interia.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ex.interia.service.CartService;
import com.ex.interia.service.MemberService;
import com.ex.interia.vo.CartVo;
import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.OrderVo;
import com.ex.interia.vo.TotalVo;

@Controller
@RequestMapping("/cart/*")
public class CartController {

	
	public CartService cartService;
	
	@Autowired
	public CartController(CartService cartService) {
		this.cartService = cartService;
	}
	
	//장바구니에 넣기 !!
	@RequestMapping("insert.do")  
	public String insert(CartVo vo,HttpSession session) {
		 
		//일단 로그인한사람만 볼수있게하기 위해서 세션값을가져옴
		String memberid = (String) session.getAttribute("memberid");
		
		
		if(memberid==null) { //로그인 되어있지 않으면 로그인페이지로 이동시키자!
			return "redirect:/member/login.do";
		}else {
			vo.setMemberid(memberid); //세션값을 넣어줍니다.
			cartService.insert(vo); // insert 하기위해서 로직실행하기
			return "redirect:/cart/list.do";  //실행이 되면 리스트페이지로 가기 
		}
		
		
		
	}
	
	
	@RequestMapping("list.do") // insert 완료하고 보여주는 페이지 리스트페이지로 이동하기
	public ModelAndView list(HttpSession session,ModelAndView mav) { // 아이디값은 계속 가져오기
		
		String memberid = (String) session.getAttribute("memberid"); // 아이디 가져오기
		
		
		HashMap<String, Object> map = new HashMap<String, Object>(); //값을 여러가지 넣기위해서 맵생성
		
		if(memberid !=null) {
			
			List<TotalVo> list = cartService.list(memberid); // 로그인한 회원이 장바구니에 등록한 리스트 다가져오기 
			int sumMoney = cartService.sumMoney(memberid); // 총합계
			int fee = sumMoney >= 100000 ? 0 : 2500;   // 총합계금액이 10만원이상이면  무료배송 아니면 2500원 부가하기
			
			map.put("sumMoney", sumMoney); // 로그인한 회원 모든 합계급액
			map.put("fee", fee); //배송료
			map.put("list", list); // 한사람이 구매한 목록
			map.put("count", list.size()); //장바구니에 들어있는 총 수량
			mav.setViewName("cart/cart_list"); // 리스트페이지로 이동
			map.put("total", sumMoney+fee);
			mav.addObject("map", map); // 맵 에다가 담아서 가져가기위함.
			return mav;
			
			
		}else {
			return new ModelAndView("login/login");
		}
		
		
	}
	
	
	@RequestMapping("delete.do")
	public String delete(int cart_id) { //개별로 삭제하기
      cartService.delete(cart_id);
      return "redirect:/cart/list.do";
	}
	
	
	
	
	@RequestMapping("deleteAll.do") // 전체삭제
	public String deleteAll(HttpSession session) {
		
		//로그인한 회원의ㅣ 장바구니 전체 삭제하기위함.
		String memberid = (String) session.getAttribute("memberid");
		
		
		if(memberid !=null) {
			cartService.deleteAll(memberid);
		}else {
			return "redirect:/member/login.do";
		}
		
		return "redirect:/cart/list.do";
	}
	
	
	
	@RequestMapping("update.do") //수량 변경하기 
	public String update(int[] amount,int[] cart_id,HttpSession session) { // 배열로 받기. 수량이랑 카트번호
		
		System.out.println("amount =" + amount);
		System.out.println("cart_id=" +cart_id);
		
		//로그인한 회원 정보가져오기
		String memberid = (String) session.getAttribute("memberid");
		
		if(memberid==null) { // 로그인이 안되잇으면
			return "redirect:/member/login.do";
		}else {  //로그인이 되면
			
			for(int i=0; i<cart_id.length; i++) {  //반복문 돌리자
				
				if(amount[i] ==0) { //수량이 0개가 되면
					cartService.delete(cart_id[i]); //삭제하기
				}else { //수량이 0개가 아니면
					
					CartVo vo = new CartVo();
					vo.setMemberid(memberid); //세션값저장
					vo.setCart_id(cart_id[i]); // 카트번호
					vo.setAmount(amount[i]); // 수량
					cartService.update(vo); //업데이트하기
					
					
				}
				

				
			}
			
			return "redirect:/cart/list.do";
			
		}
		
		
		
	}
	
	
	
	@RequestMapping("order.do")
	public ModelAndView order(HttpSession session,ModelAndView mav,HttpServletRequest request) {
		
String memberid = (String) session.getAttribute("memberid"); // 아이디 가져오기
		
		
		HashMap<String, Object> map = new HashMap<String, Object>(); //값을 여러가지 넣기위해서 맵생성
		
		if(memberid !=null) {
			
			List<TotalVo> list = cartService.list(memberid); // 로그인한 회원이 장바구니에 등록한 리스트 다가져오기 
			int sumMoney = cartService.sumMoney(memberid); // 총합계
			int fee = sumMoney >= 100000 ? 0 : 2500;   // 총합계금액이 10만원이상이면  무료배송 아니면 2500원 부가하기
			
			
			
			
			
			for(TotalVo vo:list) {
				System.out.println("vo="+vo.getProduct_name());
				map.put("product_name", vo.getProduct_name());
				map.put("code",vo.getProduct_code());
				map.put("cart", vo.getCart_id());
				map.put("id", vo.getMemberid());
			}
			
			
			
			
			
			
			
			map.put("sumMoney", sumMoney); // 로그인한 회원 모든 합계급액
			map.put("fee", fee); //배송료
			map.put("list", list); // 한사람이 구매한 목록
			map.put("count", list.size()); //장바구니에 들어있는 총 수량
			mav.setViewName("cart/cart_order"); // 리스트페이지로 이동
			map.put("total", sumMoney+fee);
			mav.addObject("map", map); // 맵 에다가 담아서 가져가기위함.
			return mav;
			
			
			
			
			
			
		
	}else {
		return new ModelAndView("login/login");
	}
	
	
	}	
	
	
	

	 
	
}
