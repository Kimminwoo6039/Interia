package com.ex.interia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ex.interia.dao.MemberDao;
import com.ex.interia.dao.OrderDao;
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
	

	
	
	
	
	
	
}
