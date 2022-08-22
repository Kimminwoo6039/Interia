package com.ex.interia.dao;

import java.util.List;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ex.interia.vo.Criteria;
import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.OrderVo;
import com.ex.interia.vo.ProductVo;

@Repository
public class ProductDao {

	public SqlSession sqlSession;
	
	private static final String Mapper = "product";
	
	@Autowired
	public ProductDao(SqlSession sqlSession) {
		this.sqlSession =sqlSession;
	}
	
	
	public void writeAction(ProductVo vo) {
		sqlSession.insert(Mapper+".writeAction", vo);
	}


	public int cnt(Criteria cri) {
		return sqlSession.selectOne(Mapper+".cnt", cri);
	}


	public List<ProductVo> list(Criteria cri) {
		return sqlSession.selectList(Mapper+".list", cri);
	}


	public ProductVo edit(int product_code) {
		return sqlSession.selectOne(Mapper+".edit", product_code);
	}


	public void update(ProductVo vo) {
		sqlSession.update(Mapper+".update", vo);
	}


	public String file(Integer product_code) {
		return sqlSession.selectOne(Mapper+".file", product_code);
	}


	public void delete(Integer product_code) {
        sqlSession.delete(Mapper+".delete", product_code);		
	}


	public ProductVo detail(int product_code) {
		return sqlSession.selectOne(Mapper+".detail", product_code);
	}


	public List<ProductVo> list4() {
		return sqlSession.selectList(Mapper+".list4");
	}


	public List<ProductVo> list16() {
		return sqlSession.selectList(Mapper+".list16");
	}


	public List<ProductVo> today() {
		return sqlSession.selectList(Mapper+".today");
	}


	public List<ProductVo> best() {
		return sqlSession.selectList(Mapper+".best");
	}
	
}
