<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main/main.css?after">
</head>
<body>
	<%-- 주석주석 --%>
	<!-- 헤더 사이드바 -->
	<jsp:include page="${pageContext.request.contextPath }/app/main/header.jsp" />
	
	<div class="home">
		<%-- 메인 가장 위 --%>
		<section class="home-section home-button">
			<div class="text-center border-right">
				<a href="">
					<button class="">
						<span class="button-content">질문하기</span>
					</button>
				</a>
			</div>
			<div class="text-center border-right">
				<a href="">
					<button class="">
						<span class="button-content">강연</span>
					</button>
				</a>
			</div>
			<div class="text-center border-right">
				<a href="">
					<button class="">
						<span class="button-content">이용방법</span>
					</button>
				</a>
			</div>
		</section>
		
		<%-- 메인 카테고리 --%>	
		<section class="home-section">
			<h4 class="home-title home-title-content">카테고리</h4>
			<div class="category">
				<div class="category-wrapper">
					<a class="category-card">
						<div class="category-content">
							<img class="category-img" src="${pageContext.request.contextPath }/assets/images/star.png">
							<div class="category-title">
								전체
							</div>
						</div>
					</a>
				</div>
				<div class="category-wrapper">
					<a class="category-card">
						<div class="category-content">
							<img class="category-img" src="${pageContext.request.contextPath }/assets/images/living.png">
							<div class="category-title">
								생활
							</div>
						</div>
					</a>
				</div>
				<div class="category-wrapper">
					<a class="category-card">
						<div class="category-content">
							<img class="category-img" src="${pageContext.request.contextPath }/assets/images/working.png">
							<div class="category-title">
								업무 및 회사생활
							</div>
						</div>
					</a>
				</div>
				<div class="category-wrapper">
					<a class="category-card">
						<div class="category-content">
							<img class="category-img" src="${pageContext.request.contextPath }/assets/images/recruitment.png">
							<div class="category-title">
								채용
							</div>
						</div>
					</a>
				</div>
				<div class="category-wrapper">
					<a class="category-card">
						<div class="category-content">
							<img class="category-img" src="${pageContext.request.contextPath }/assets/images/book.png">
							<div class="category-title">
								자기계발
							</div>
						</div>
					</a>
				</div>
				<div class="category-wrapper">
					<a class="category-card">
						<div class="category-content">
							<img class="category-img" src="${pageContext.request.contextPath }/assets/images/economy.png">
							<div class="category-title">
								제테크
							</div>
						</div>
					</a>
				</div>
				<div class="category-wrapper">
					<a class="category-card">
						<div class="category-content">
							<img class="category-img" src="${pageContext.request.contextPath }/assets/images/foundation.png">
							<div class="category-title">
								창업
							</div>
						</div>
					</a>
				</div>
				<div class="category-wrapper">
					<a class="category-card">
						<div class="category-content">
							<img class="category-img" src="${pageContext.request.contextPath }/assets/images/etc.png">
							<div class="category-title">
								기타
							</div>
						</div>
					</a>
				</div>
			</div>
		</section>
	
		<%-- 모두가 궁금해하는 질문 --%>
		<section class="home-section">
			<div class="home-title">
				<h4 class="home-title-content">모두가 궁금해하는 질문</h4>
				<c:set var="now" value="<%=new java.util.Date() %>"/>
				<c:set var="sysTime"><fmt:formatDate value="${now }" pattern="yyyy.MM.dd HH:mm" /></c:set>
				<span class="question-time"><c:out value="${sysTime}"/> 기준</span>
			</div>
			<div class="question">
				<c:forEach var="question" items="${questions}" varStatus="status">
					<div class="question-wrapper">
						<div class="question-card">
							<div>
								<a href="${pageContext.request.contextPath }/question/detail.ques?qbunho=${question.getQuestionNumber() }">
									<span class="question-title-num"><c:out value="${status.count }"/>.</span>
									<span class="question-title-content"><c:out value="${question.getQuestionTitle() }"/></span>
								</a>
							</div>
							<div class="question-category">
								<span><c:out value="${question.getQuestionCategory() }"/></span>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>	
		</section>
		
		<%-- 카테고리별 추천 답변 --%>
		<section class="home-section">
			<h4 class="home-title home-title-content">카테고리별 추천 답변</h4>
			<div class="faq">
				<div class="faq-wrapper">
					<div class="faq-category">
						<div>
							<label class="faq-category-list">
								<input type="radio" class="faq-list-radio" name="questionCategory" value="생활" checked>
								<span class="faq-list-radio-blue">생활</span>
							</label>
							<label class="faq-category-list">
								<input type="radio" class="faq-list-radio" name="questionCategory" value="업무 및 회사생활">
								<span class="faq-list-radio-blue">업무 및 회사생활</span>
							</label>
							<label class="faq-category-list">
								<input type="radio" class="faq-list-radio" name="questionCategory" value="채용">
								<span class="faq-list-radio-blue">채용</span>
							</label>
							<label class="faq-category-list">
								<input type="radio" class="faq-list-radio" name="questionCategory" value="자기계발">
								<span class="faq-list-radio-blue">자기계발</span>
							</label>
							<label class="faq-category-list">
								<input type="radio" class="faq-list-radio" name="questionCategory" value="제태크">
								<span class="faq-list-radio-blue">재테크</span>
							</label>
							<label class="faq-category-list">
								<input type="radio" class="faq-list-radio" name="questionCategory" value="창업">
								<span class="faq-list-radio-blue">창업</span>
							</label>
							<label class="faq-category-list">
								<input type="radio" class="faq-list-radio" name="questionCategory" value="기타">
								<span class="faq-list-radio-blue"">기타</span>
							</label>
						</div>
					</div>
					<c:forEach var="answer" items="${answers }">
						<div class="faq-card">
							<div class="faq-question">
								<span>
									<span class="question-title-num faq-q">Q.</span>
									<span><c:out value="${answer.getQuestionTitle() }"/></span>
								</span>
							</div>
							<div class="faq-answer">
								<span class="faq-q faq-a">A.</span>
								<span class="faq-answer-content"><c:out value="${answer.getAnswerContent() }" /></span>
		               		</div>
		               	</div>
					</c:forEach>
				</div>
			</div>     	
		</section>
	</div>	
	
	<%--푸터 --%>
	<jsp:include page="${pageContext.request.contextPath }/app/main/footer.jsp" />
	
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
		let contextPath = "${pageContext.request.contextPath}";
</script>
<script src="${pageContext.request.contextPath }/assets/js/main.js"></script>
</html>