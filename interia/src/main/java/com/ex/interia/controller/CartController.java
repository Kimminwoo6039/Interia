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
	
	//��ٱ��Ͽ� �ֱ� !!
	@RequestMapping("insert.do")  
	public String insert(CartVo vo,HttpSession session) {
		 
		//�ϴ� �α����ѻ���� �����ְ��ϱ� ���ؼ� ���ǰ���������
		String memberid = (String) session.getAttribute("memberid");
		
		
		if(memberid==null) { //�α��� �Ǿ����� ������ �α����������� �̵���Ű��!
			return "redirect:/member/login.do";
		}else {
			vo.setMemberid(memberid); //���ǰ��� �־��ݴϴ�.
			cartService.insert(vo); // insert �ϱ����ؼ� ���������ϱ�
			return "redirect:/cart/list.do";  //������ �Ǹ� ����Ʈ�������� ���� 
		}
		
		
		
	}
	
	
	@RequestMapping("list.do") // insert �Ϸ��ϰ� �����ִ� ������ ����Ʈ�������� �̵��ϱ�
	public ModelAndView list(HttpSession session,ModelAndView mav) { // ���̵��� ��� ��������
		
		String memberid = (String) session.getAttribute("memberid"); // ���̵� ��������
		
		
		HashMap<String, Object> map = new HashMap<String, Object>(); //���� �������� �ֱ����ؼ� �ʻ���
		
		if(memberid !=null) {
			
			List<TotalVo> list = cartService.list(memberid); // �α����� ȸ���� ��ٱ��Ͽ� ����� ����Ʈ �ٰ������� 
			int sumMoney = cartService.sumMoney(memberid); // ���հ�
			int fee = sumMoney >= 100000 ? 0 : 2500;   // ���հ�ݾ��� 10�����̻��̸�  ������ �ƴϸ� 2500�� �ΰ��ϱ�
			
			map.put("sumMoney", sumMoney); // �α����� ȸ�� ��� �հ�޾�
			map.put("fee", fee); //��۷�
			map.put("list", list); // �ѻ���� ������ ���
			map.put("count", list.size()); //��ٱ��Ͽ� ����ִ� �� ����
			mav.setViewName("cart/cart_list"); // ����Ʈ�������� �̵�
			map.put("total", sumMoney+fee);
			mav.addObject("map", map); // �� ���ٰ� ��Ƽ� ������������.
			return mav;
			
			
		}else {
			return new ModelAndView("login/login");
		}
		
		
	}
	
	
	@RequestMapping("delete.do")
	public String delete(int cart_id) { //������ �����ϱ�
      cartService.delete(cart_id);
      return "redirect:/cart/list.do";
	}
	
	
	
	
	@RequestMapping("deleteAll.do") // ��ü����
	public String deleteAll(HttpSession session) {
		
		//�α����� ȸ���Ǥ� ��ٱ��� ��ü �����ϱ�����.
		String memberid = (String) session.getAttribute("memberid");
		
		
		if(memberid !=null) {
			cartService.deleteAll(memberid);
		}else {
			return "redirect:/member/login.do";
		}
		
		return "redirect:/cart/list.do";
	}
	
	
	
	@RequestMapping("update.do") //���� �����ϱ� 
	public String update(int[] amount,int[] cart_id,HttpSession session) { // �迭�� �ޱ�. �����̶� īƮ��ȣ
		
		System.out.println("amount =" + amount);
		System.out.println("cart_id=" +cart_id);
		
		//�α����� ȸ�� ������������
		String memberid = (String) session.getAttribute("memberid");
		
		if(memberid==null) { // �α����� �ȵ�������
			return "redirect:/member/login.do";
		}else {  //�α����� �Ǹ�
			
			for(int i=0; i<cart_id.length; i++) {  //�ݺ��� ������
				
				if(amount[i] ==0) { //������ 0���� �Ǹ�
					cartService.delete(cart_id[i]); //�����ϱ�
				}else { //������ 0���� �ƴϸ�
					
					CartVo vo = new CartVo();
					vo.setMemberid(memberid); //���ǰ�����
					vo.setCart_id(cart_id[i]); // īƮ��ȣ
					vo.setAmount(amount[i]); // ����
					cartService.update(vo); //������Ʈ�ϱ�
					
					
				}
				

				
			}
			
			return "redirect:/cart/list.do";
			
		}
		
		
		
	}
	
	
	
	@RequestMapping("order.do")
	public ModelAndView order(HttpSession session,ModelAndView mav,HttpServletRequest request) {
		
String memberid = (String) session.getAttribute("memberid"); // ���̵� ��������
		
		
		HashMap<String, Object> map = new HashMap<String, Object>(); //���� �������� �ֱ����ؼ� �ʻ���
		
		if(memberid !=null) {
			
			List<TotalVo> list = cartService.list(memberid); // �α����� ȸ���� ��ٱ��Ͽ� ����� ����Ʈ �ٰ������� 
			int sumMoney = cartService.sumMoney(memberid); // ���հ�
			int fee = sumMoney >= 100000 ? 0 : 2500;   // ���հ�ݾ��� 10�����̻��̸�  ������ �ƴϸ� 2500�� �ΰ��ϱ�
			
			
			
			
			
			for(TotalVo vo:list) {
				System.out.println("vo="+vo.getProduct_name());
				map.put("product_name", vo.getProduct_name());
				map.put("code",vo.getProduct_code());
				map.put("cart", vo.getCart_id());
				map.put("id", vo.getMemberid());
			}
			
			
			
			
			
			
			
			map.put("sumMoney", sumMoney); // �α����� ȸ�� ��� �հ�޾�
			map.put("fee", fee); //��۷�
			map.put("list", list); // �ѻ���� ������ ���
			map.put("count", list.size()); //��ٱ��Ͽ� ����ִ� �� ����
			mav.setViewName("cart/cart_order"); // ����Ʈ�������� �̵�
			map.put("total", sumMoney+fee);
			mav.addObject("map", map); // �� ���ٰ� ��Ƽ� ������������.
			return mav;
			
			
			
			
			
			
		
	}else {
		return new ModelAndView("login/login");
	}
	
	
	}	
	
	
	

	 
	
}
