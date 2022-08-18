package com.ex.interia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ex.interia.dao.MemberDao;
import com.ex.interia.vo.MemberVo;

@Service
public class MemberService {

	public MemberDao memberDao;
	
	@Autowired
	public MemberService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	//회원가입프로세스
	public int joinAction(MemberVo vo) {
		return memberDao.joinAction(vo);
	}
	
	public String loginAction(MemberVo vo) {
		return memberDao.loginAction(vo);
	}
	
}
