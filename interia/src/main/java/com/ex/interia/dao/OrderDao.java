package com.ex.interia.dao;

import java.util.List;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ex.interia.vo.DeliveryVo;
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

	public List<OrderVo> list(DeliveryVo vo) {
		return sqlSession.selectList(Mapper+".list", vo);
	}

	public int abc1(String memberid) {
		return sqlSession.selectOne(Mapper+".abc1", memberid);
	}
	
	public int abc2(String memberid) {
		return sqlSession.selectOne(Mapper+".abc2", memberid);
	}
	
	public int abc3(String memberid) {
		return sqlSession.selectOne(Mapper+".abc3", memberid);
	}
	
	public int abc4(String memberid) {
		return sqlSession.selectOne(Mapper+".abc4", memberid);
	}
	
	public int abc5(String memberid) {
		return sqlSession.selectOne(Mapper+".abc5", memberid);
	}
	
	public int abc6(String memberid) {
		return sqlSession.selectOne(Mapper+".abc6", memberid);
	}

	public void cancle(String order_idx) {
          sqlSession.update(Mapper+".cancle", order_idx);		
	}
	
	
	
}
