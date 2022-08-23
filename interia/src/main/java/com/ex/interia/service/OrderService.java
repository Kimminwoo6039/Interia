package com.ex.interia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ex.interia.dao.MemberDao;
import com.ex.interia.dao.OrderDao;
import com.ex.interia.vo.DeliveryVo;
import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.OrderVo;

@Service
public class OrderService {

	public OrderDao orderDao;
	
	@Autowired
	public OrderService(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	public void pay(OrderVo vo) {
         orderDao.pay(vo);		
	}

	public List<OrderVo> list(DeliveryVo vo) {
		return orderDao.list(vo);
	}

	public int abc1(String memberid) {
		return orderDao.abc1(memberid);
	}
	public int abc2(String memberid) {
		return orderDao.abc2(memberid);
	}
	public int abc3(String memberid) {
		return orderDao.abc3(memberid);
	}
	public int abc4(String memberid) {
		return orderDao.abc4(memberid);
	}
	public int abc5(String memberid) {
		return orderDao.abc5(memberid);
	}
	
	public int abc6(String memberid) {
		return orderDao.abc6(memberid);
	}

	public void cancel(String order_idx) {
       orderDao.cancle(order_idx);		
	}
	

	
	
	
	
	
	
}
