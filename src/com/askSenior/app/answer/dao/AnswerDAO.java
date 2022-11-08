package com.askSenior.app.answer.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.askSenior.app.answer.vo.AnswerVO;
import com.mybatis.config.MyBatisConfig;

public class AnswerDAO {
public SqlSession sqlSession;
	
	public AnswerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);

	}
	public List<AnswerVO> selectAll(int questionNumber){
		return sqlSession.selectList("answer.selectAll",questionNumber);
	}
	
	public int selectTotal(int questionNumber) {
		return sqlSession.selectOne("answer.selectTotal",questionNumber);
	}
	
	public int likeCount(int answerNumber) {
		return sqlSession.selectOne("answer.likeCount",answerNumber);
	}
	
	public int recommendCount(int answerNumber) {
		return sqlSession.selectOne("answer.recommendCount",answerNumber);
	}
	
	public void AnswerInsert(AnswerVO answerVO) {
		sqlSession.selectOne("answer.AnswerInsert",answerVO);
	}
}
