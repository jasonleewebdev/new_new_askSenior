package com.askSenior.app.member.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.askSenior.app.member.vo.MemberVO;
import com.mybatis.config.MyBatisConfig;

public class MemberDAO {
	
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);

	}
	
	public boolean checkId(String memberEmail) {
		return (Integer)sqlSession.selectOne("member.checkId",memberEmail) == 0;
	}
	
	public void join(MemberVO memberVO) {
		sqlSession.insert("member.join",memberVO);
	}
	public int login(String memberEmail, String memberPw) throws NullPointerException 
	{
		MemberVO memberVO = null;
		HashMap<String, String>loginMap= new HashMap<String, String>();
		
		loginMap.put("memberEmail", memberEmail);
		loginMap.put("memberPw", memberPw);
		
		System.out.println(loginMap);
		memberVO= sqlSession.selectOne("member.login", loginMap);
		return memberVO == null ? 0 : memberVO.getMemberNumber();
	}

}
