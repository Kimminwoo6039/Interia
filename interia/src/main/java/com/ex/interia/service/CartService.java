package com.ex.interia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ex.interia.dao.CartDao;
import com.ex.interia.dao.MemberDao;
import com.ex.interia.vo.CartVo;
import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.TotalVo;

@Service
public class CartService {

	public CartDao cartDao;
	
	@Autowired
	public CartService(CartDao cartDao) {
		this.cartDao = cartDao;
	}
	

	
	
	public void insert(CartVo vo) { // insert 할때 리턴값이 반환값이 필요없기때문에 void 로 보냄
		cartDao.insert(vo); 
	}




	public List<TotalVo> list(String memberid) {  // 장바구니에 담긴 값 가져오는 리스트페이지
		return cartDao.list(memberid);
	}




	public int sumMoney(String memberid) {
		return cartDao.sumMoney(memberid);
	}




	public void delete(int cart_id) {
         cartDao.delete(cart_id);		
	}




	public void deleteAll(String memberid) {
       cartDao.deleteAll(memberid);		
	}




	public void update(CartVo vo) {
        cartDao.update(vo);		
	}
	
}
