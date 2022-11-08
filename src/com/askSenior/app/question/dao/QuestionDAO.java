package com.askSenior.app.question.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.askSenior.app.question.vo.CategoryPagenationDTO;
import com.askSenior.app.question.vo.LikeQuestionVO;
import com.askSenior.app.question.vo.NewSearchTitlePagenationDTO;
import com.askSenior.app.question.vo.QuestionVO;
import com.askSenior.app.question.vo.SearchTitlePagenationDTO;
import com.mybatis.config.MyBatisConfig;

public class QuestionDAO {
public SqlSession sqlSession;
	
	public QuestionDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);

	}
	public List<QuestionVO> selectAll(HashMap<String, Integer> pageMap) {
		System.out.println("selectAll들어옴");
		return sqlSession.selectList("question.selectAll", pageMap);
		
	}
	
	public int getTotal() {
		System.out.println("getTotal들어옴");
		return sqlSession.selectOne("question.getTotal");
	}
	public List<QuestionVO> selectCategory(CategoryPagenationDTO categoryPagenationDTO) {
		System.out.println("selectCategory들어옴");
		return sqlSession.selectList("question.selectCategory", categoryPagenationDTO);
		
	}
	public int selectCategoryTotal(CategoryPagenationDTO categoryPagenationDTO) {
		System.out.println("selectCategoryTotal들어옴");
		return sqlSession.selectOne("question.selectCategoryTotal",categoryPagenationDTO);
	}
	
	public int likeQuestionCount(int questionNumber) {
		return sqlSession.selectOne("question.likeQuestionCount",questionNumber);
	}
	
	public int interestingQuestionCount(int questionNumber) {
		int value;
		try {
			value = (Integer)sqlSession.selectOne("question.interestingQuestionCount",questionNumber);
			return value;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
			return 0;
		}
		
	}
	public void plusInterestingQuestionCount(LikeQuestionVO likeQuestionVO) {
		sqlSession.insert("question.plusInterestingQuestionCount",likeQuestionVO);
	}
	
	public void minusInterestingQuestionCount(LikeQuestionVO likeQuestionVO) {
		sqlSession.delete("question.minusInterestingQuestionCount",likeQuestionVO);
	}
	public int recommendingQuestionCount(int questionNumber) {
		int value;
		try {
			value = (Integer)sqlSession.selectOne("question.recommendingQuestionCount",questionNumber);
			return value;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
			return 0;
		}
		
	}
	
	public int replyAnswerCount(int questionNumber) {
		int value;
		try {
			value = (Integer)sqlSession.selectOne("question.replyAnswerCount",questionNumber);
			return value;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
			return 0;
		}
		
	}
	
	public QuestionVO selectDetail(int qbunho) {
		
		return sqlSession.selectOne("question.selectDetail", qbunho);
		
	}
	
	public List<QuestionVO> searchTitleAll(NewSearchTitlePagenationDTO newsearchTitlePagenationDTO) {
		System.out.println("selecttitleAll들어옴");
		return sqlSession.selectList("question.searchTitle", newsearchTitlePagenationDTO);
		
	}
	/*
	 * public int searchTitleTotal(NewSearchTitlePagenationDTO
	 * newsearchTitlePagenationDTO) { System.out.println("newsearchgetTotal들어옴");
	 * return (Integer)sqlSession.selectOne("question.searchTitleTotal"); }
	 */
	public int searchTitleTotal(String searchTitle) {
		return sqlSession.selectOne("question.searchTitleTotal", searchTitle);
	}
	
	public void questionInsert(QuestionVO questionVO) {
		sqlSession.selectOne("question.questionInsert",questionVO);
	}
	
	public void questionUpdateInsert(QuestionVO questionVO) {
		System.out.println("questionUpdateInsert들어옴");
		sqlSession.update("question.questionUpdateInsert", questionVO);
	}
	
	public void questionDelete(int questionNumber) {
		sqlSession.delete("question.questionDelete",questionNumber);
	}
}
