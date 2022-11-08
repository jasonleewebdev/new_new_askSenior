package com.askSenior.app.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.askSenior.app.admin.vo.AdminVO;
import com.askSenior.app.admin.vo.Criteria;
import com.askSenior.app.answer.vo.AnswerVO;
import com.askSenior.app.lecture.vo.LectureVO;
import com.askSenior.app.member.vo.MemberVO;
import com.askSenior.app.notice.vo.NoticeVO;
import com.askSenior.app.question.vo.QuestionVO;
import com.mybatis.config.MyBatisConfig;

public class AdminDAO {
public SqlSession sqlSession;
	
	public AdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);

	}
	public List<MemberVO> selectAll(HashMap pageMap) {
		System.out.println("DAOselectAll 들어옴");
		return sqlSession.selectList("admin.selectAll",pageMap);
	}
	public MemberVO selectOne(int mbunho) {
		System.out.println("DAOselectOne 들어옴");
		return sqlSession.selectOne("admin.memberDetail",mbunho);
	}

	public List<MemberVO> categoryAll(Criteria criteria){
		
		return sqlSession.selectList("admin.categoryAll",criteria);
	}
	
	public int MemberTotal() {
		return sqlSession.selectOne("admin.memberTotal");
	}
	
	public void memberUpdate(MemberVO memberVO) {
		 sqlSession.selectOne("admin.memberUpdate",memberVO);
		 
	}
	
	public List<QuestionVO> questionAll(HashMap pageMap) {
		System.out.println("DAOquestionAll 들어옴");
		return sqlSession.selectList("admin.questionAll",pageMap);
	}
	public QuestionVO questionOne(int qbunho) {
		System.out.println("DAOselectOne 들어옴1");
		return sqlSession.selectOne("admin.questionDetail",qbunho);
	}
	
	public int QuestionTotal() {
		return sqlSession.selectOne("admin.questionTotal");
	}
	
	public void deleteQuestion(int qbunho) {
		sqlSession.delete("admin.deleteQuestion", qbunho);
	}
	
	public List<AnswerVO> answerAll(HashMap pageMap) {
		System.out.println("DAOanswerAll 들어옴");
		return sqlSession.selectList("admin.answerAll",pageMap);
	}
	public AnswerVO answerOne(int abunho) {
		System.out.println("DAOanswerOne 들어옴");
		return sqlSession.selectOne("admin.answerDetail",abunho);
	}
	
	public int AnswerTotal() {
		return sqlSession.selectOne("admin.answerTotal");
	}
	
	public void deleteAnswer(int abunho) {
		sqlSession.delete("admin.deleteAnswer", abunho);
	}
	
	public List<LectureVO> lectureAll(HashMap pageMap) {
		System.out.println("DAOlectureAll 들어옴");
		return sqlSession.selectList("admin.lectureAll",pageMap);
	}
	public LectureVO lectureOne(int lbunho) {
		System.out.println("DAOlectureOne 들어옴");
		return sqlSession.selectOne("admin.lectureDetail",lbunho);
	}
	
	public int LectureTotal() {
		return sqlSession.selectOne("admin.lectureTotal");
	}
	
	public List<NoticeVO> noticeAll(HashMap pageMap) {
		System.out.println("DAOnoticeAll 들어옴");
		return sqlSession.selectList("admin.noticeAll",pageMap);
	}
	public NoticeVO noticeOne(int nbunho) {
		System.out.println("DAOnoticeOne 들어옴");
		return sqlSession.selectOne("admin.noticeDetail",nbunho);
	}
	
	public int NoticeTotal() {
		return sqlSession.selectOne("admin.noticeTotal");
	}
	
	public void noticeUpdate(NoticeVO noticeVO) {
		System.out.println("DAOnoticeOne 들어옴");
		 sqlSession.selectOne("admin.noticeUpdate",noticeVO);
		 
		 
	}
}
