package com.ex.interia.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ex.interia.vo.DeliveryVo;
import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.OrderVo;

@Repository
public class AdminDao {

	public SqlSession sqlSession;
	
	private static final String Mapper = "admin";
	
	@Autowired
	public AdminDao(SqlSession sqlSession) {
		this.sqlSession =sqlSession;
	}

	public String login(MemberVo vo) {
		return sqlSession.selectOne(Mapper+".insert", vo);
	}

	public int abc1() {
		return sqlSession.selectOne(Mapper+".abc1");
	}
	
	public int abc2() {
		return sqlSession.selectOne(Mapper+".abc2");
	}
	
	public int abc3() {
		return sqlSession.selectOne(Mapper+".abc3");
	}
	
	
	public int abc4() {
		return sqlSession.selectOne(Mapper+".abc4");
	}
	
	
	public int abc5() {
		return sqlSession.selectOne(Mapper+".abc5");
	}
	
	public int abc6() {
		return sqlSession.selectOne(Mapper+".abc6");
	}

	public List<OrderVo> list(DeliveryVo vo) {
		return sqlSession.selectList(Mapper+".list", vo);
	}
	
	public void modify(Map deliveryMap) throws Exception{
		sqlSession.update(Mapper+".modify", deliveryMap);
	}
	

	
}
