package com.ex.interia.dao;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.OrderVo;

@Repository
public class OrderDao {

	public SqlSession sqlSession;
	
	private static final String Mapper = "order";
	
	@Autowired
	public OrderDao(SqlSession sqlSession) {
		this.sqlSession =sqlSession;
	}

	public void pay(OrderVo vo) {
	  sqlSession.insert(Mapper+".insert", vo);
	}
	
	
	
}
