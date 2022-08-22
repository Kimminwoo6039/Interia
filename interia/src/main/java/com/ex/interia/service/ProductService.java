package com.ex.interia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ex.interia.dao.MemberDao;
import com.ex.interia.dao.ProductDao;
import com.ex.interia.vo.Criteria;
import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.OrderVo;
import com.ex.interia.vo.ProductVo;

@Service
public class ProductService {

	public ProductDao productDao;
	
	@Autowired
	public ProductService(ProductDao productDao) {
		this.productDao = productDao;
	}
	
	
	public void writeAction(ProductVo vo) {
		productDao.writeAction(vo);
	}


	public int cnt(Criteria cri) {
		return productDao.cnt(cri);
	}


	public List<ProductVo> list(Criteria cri) throws Exception {
		return productDao.list(cri);
	}


	public ProductVo edit(int product_code) {
		return productDao.edit(product_code);
	}


	public void update(ProductVo vo) {
		productDao.update(vo);
	}


	public String file(Integer product_code) {
		return productDao.file(product_code);
	}


	public void delete(Integer product_code) {
       productDao.delete(product_code);		
	}


	public ProductVo detail(int product_code) {
		return productDao.detail(product_code);
	}


	//홈페이지 4개 뽑기 ㅎ
	public List<ProductVo> list4() {
		return productDao.list4();
	}


	public List<ProductVo> list16() {
		return productDao.list16();
	}
	
	
	
	
}
