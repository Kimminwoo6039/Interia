package com.ex.interia.dao;

import java.util.List;

import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ex.interia.vo.CartVo;
import com.ex.interia.vo.MemberVo;
import com.ex.interia.vo.TotalVo;

@Repository
public class CartDao {

	public SqlSession sqlSession;
	
	private static final String Mapper = "cart";
	
	@Autowired
	public CartDao(SqlSession sqlSession) {
		this.sqlSession =sqlSession;
	}
	
	
	
	public void insert(CartVo vo) { //여기도 마찬가지로 반환값 필요없으니 void
		sqlSession.insert(Mapper+".insert", vo); // mapper 쿼리실행문으로 이동.
	}



	public List<TotalVo> list(String memberid) {  // 리턴값이 List임
		return sqlSession.selectList(Mapper+".list", memberid); //리스트는 List <> 담아야만 가능..
	}



	public int sumMoney(String memberid) {
		return sqlSession.selectOne(Mapper+".sumMoney", memberid);
	}



	public void delete(int cart_id) {
		 sqlSession.delete(Mapper+".delete", cart_id);
	}



	public void deleteAll(String memberid) {
       sqlSession.delete(Mapper+".deleteAll", memberid);		
	}



	public void update(CartVo vo) {
        sqlSession.update(Mapper+".update", vo);		
	}
	
	
}
