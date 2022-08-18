package com.ex.interia.dao;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ex.interia.vo.MemberVo;

@Repository
public class MemberDao {

	public SqlSession sqlSession;
	
	private static final String Mapper = "member";
	
	@Autowired
	public MemberDao(SqlSession sqlSession) {
		this.sqlSession =sqlSession;
	}
	
	
	public int joinAction(MemberVo vo) {
		return sqlSession.insert(Mapper+".insert", vo);
	}
	
	public String loginAction(MemberVo vo) {
		return sqlSession.selectOne(Mapper+".loginAction", vo);
	}


	public int count(MemberVo vo) {
		return sqlSession.selectOne(Mapper+".count", vo);
	}
	
}
