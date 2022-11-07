package com.askSenior.app.main.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.askSenior.app.main.vo.RecommendedAnswerDTO;
import com.askSenior.app.question.vo.QuestionVO;
import com.mybatis.config.MyBatisConfig;

public class MainDAO {
public SqlSession sqlSession;
	
	public MainDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<QuestionVO> selectQuestion(){
		return sqlSession.selectList("main.selectQuestion");
	}
	
	public List<RecommendedAnswerDTO> selectAnswer(String questionCategory) {
		return sqlSession.selectList("main.selectAnswer", questionCategory);
	}

}

