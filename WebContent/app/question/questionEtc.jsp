<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/question/questionMainPage.css">
</head>
<body>

    <!-- 헤더 -->
    <header>
        <nav class="header">
            <div class="header-wrapper">
                <div class="header-container">
                    <button class="header-hamburger">
                        <img src="${pageContext.request.contextPath}/assets/images/hamburger.png">
                    </button>

                    <div class="header-left">
                        <a class="header-logo">
                            <img class="header-logo-img" src="${pageContext.request.contextPath}/assets/images/logoText.png">
                        </a>
                    </div>
                    
                    <div class="header-right">
                        <div class="header-right-item search">
                           <%-- <form class="form-search" action="${pageContext.request.contextPath}/question/searchTitle.ques?searchTitle=${param.formSearchInput}"> --%>
                            <form class="form-search" action="${pageContext.request.contextPath}/question/searchTitle.ques">
                                <input type="search" placeholder="궁금한 것을 검색해보세요." name="formSearchInput">
                                <!-- <input type="submit"/>-->
                            </form>
                            <button>
                                <img class="icon" src="${pageContext.request.contextPath}/assets/images/search.png">
                            </button>
                        </div>
                        <div class="header-right-item register">
                            <a class="button-register">로그인/회원가입</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    
    <!-- 네비게이션 -->
    <div id="sidebar">
        <div class="sidebar-bg"></div>
        <div class="sidebar">
            <div class="sidebar-inner">
                <div class="sidebar-wrapper">
                    <div class="sidebar-header">
                        <button class="sidebar-close">
                            <img src="${pageContext.request.contextPath}/assets/images/close.png">
                        </button>
                        <a class="sidebar-home">
                            <img>홈
                        </a>
                        <button class="sidebar-notice">
                            <img src="${pageContext.request.contextPath}/assets/images/bell.png">
                        </button>
                    </div>
                    <div class="sidebar-user">
                        <div class="user-content">
                            <span class="profile-image"></span>
                            <a class="profile-login">
                                로그인하세요
                                <img src="${pageContext.request.contextPath}/assets/images/blackArrowRight.png">
                            </a>
                        </div>
                        <div class="sidebar-main">
                            <a href="">
                                <div>질문하기</div>
                            </a>
                            <a href="">
                                <div>강연</div>
                            </a>
                            <a href="">
                                <div>이용방법</div>
                            </a>
                        </div>
                    </div>
                    <div class="sidebar-menu">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/question/listAll.ques">전체</a></li>
                            <li><a href="">생활</a></li>
                            <li><a href="${pageContext.request.contextPath}/question/listBusiness.ques">업무 및 회사생활</a></li>
                            <li><a href="${pageContext.request.contextPath}/question/listRecruitment.ques">채용</a></li>
                            <li><a href="${pageContext.request.contextPath}/question/listImprovement.ques">자기계발</a></li>
                            <li><a href="${pageContext.request.contextPath}/question/listInvestment.ques">제테크</a></li>
                            <li><a href="${pageContext.request.contextPath}/question/listFoundation.ques">창업</a></li>
                            <li><a href="${pageContext.request.contextPath}/question/listEtc.ques">기타</a></li>
                            <li><a href="">공지사항</a></li>
                            <li><a href="">소개</a></li>
                            <li><a href="">FAQ</a></li>
                        </ul>
                    </div>
                    <div class="sidebar-login">
                        <a>로그인/회원가입</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 배너 헤더 -->
    <header id="banner">
        <div>
            <div><img src="	https://media.a-ha.io/aha-qna/categories/logos/category_labor.png?v=1.2"></div>
            <div class="banner-text">업무 및 회사 생활<br><span>궁금한 회사생활!</span></div>
        </div>
    </header>

    <!-- 메인 -->
    <main>
        <!-- 네비게이션 -->
        <nav id="categoryNav">
            <ul>
                <li><a href="${pageContext.request.contextPath}/question/listAll.ques"">전체</a></li>
                <li><hr><a href="${pageContext.request.contextPath}/question/listBusiness.ques">업무 및 회사생활</a></li>
                <li><hr><a href="${pageContext.request.contextPath}/question/listRecruitment.ques">채용</a></li>
                <li><hr><a href="${pageContext.request.contextPath}/question/listImprovement.ques">자기계발</a></li>
                <li><hr><a href="${pageContext.request.contextPath}/question/listInvestment.ques">제테크</a></li>
                <li><hr><a href="${pageContext.request.contextPath}/question/listFoundation.ques">창업</a></li>
                <li><hr><a href="${pageContext.request.contextPath}/question/listEtc.ques">기타</a></li>
                <li><hr><a href="#">공지사항</a></li>
                <li><hr><a href="#">사이트 소개</a></li>
            </ul>
        </nav>
        <!-- 섹션 -->
        <section>
            <div>
                <div class="tabs">
                    <button>추가 답변하기</button>
                    <button>빠른 답변하기</button>
                    <hr>
                </div>
            </div>
            <c:choose>
				<c:when test="${not empty questions and fn:length(questions) > 0}">
					<c:forEach var="question" items="${questions}"  varStatus="status"> 
					<%--<c:set var="i" value="${i+1}"/>--%>
						<%--<c:forEach var="question" begin="0" end="${questions.size()-1}"/> --%>
						<div>
		                <article>
		                    <div class="article-left">
		                        <div>
		                            <p><img src="${pageContext.request.contextPath}/assets/images/badge.png" style="width: 20px; height: 20px;"></p>
		                            <p id="likeCount">${interestingQuestionCountList.get(status.index)+recommendingQuestionCountList.get(status.index)+likeQuestionCountList.get(status.index)}</p>
		                        </div>
		                    </div>
		                    <div class="article-right">
		                        <header>
		                            <a href="${pageContext.request.contextPath}/question/detail.ques?qbunho=${question.getQuestionNumber()}"><h1><c:out value="${question.getQuestionTitle()}"/></h1></a>
		                        </header>
		                        <div class="article-bottom">
		                            <div class="icon-conatiner">
		                                <div><img src="${pageContext.request.contextPath}/assets/images/answer.png"><span id="answerCount">${replyAnswerCountList.get(status.index)}</span></div>
		                                <div><img src="${pageContext.request.contextPath}/assets/images/grayStar.png"><span id="scrapCount">${interestingQuestionCountList.get(status.index)}</span></div><!-- interestingcount -->
		                                <div><img src="${pageContext.request.contextPath}/assets/images/grayThumb.png"> <span id="likeCount">${recommendingQuestionCountList.get(status.index)}</span></div><!-- recommendcount -->
		
		                            </div>
		                            <div id="writeDate"><c:out value="${question.getQuestionUpdatedDate()}"/></div>
		                        </div>
		                    </div>
		                </article>
		            </div>
															
					</c:forEach>
				</c:when>
				<c:otherwise>
					<div>
						<article>등록된 게시물이 없습니다.</article>
					</div>
				</c:otherwise>
			</c:choose>
            <!--  
            <div>
                <article>
                    <div class="article-left">
                        <div>
                            <p><img src="../../assets/images/badge.png" style="width: 20px; height: 20px;"></p>
                            <p id="likeCount">10</p>
                        </div>
                    </div>
                    <div class="article-right">
                        <header>
                            <a href="#"><h1>왜 회사에서 정치를 하나요? 시니어님들도 사내 정치를 하셨나요?</h1></a>
                        </header>
                        <div class="article-bottom">
                            <div class="icon-conatiner">
                                <div><img src="../../assets/images/answer.png"><span id="answerCount">3</span></div>
                                <div><img src="../../assets/images/grayStar.png"><span id="scrapCount">1</span></div>
                                <div><img src="../../assets/images/grayThumb.png"> <span id="likeCount">2</span></div>

                            </div>
                            <div id="writeDate">2022.10.21. 17:36</div>
                        </div>
                    </div>
                </article>
            </div>
            -->
            <!-- 페이징 -->
            <div class="page-nav-container">
                <div class="page-nav">
                <c:if test="${prev}">
					<button><a href="${pageContext.request.contextPath}/question/listEtc.ques?page=${startPage - 1}">&lt;</a></button>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
													<c:choose>
														<c:when test="${not (i eq page)}">
															<button>
															<a href="${pageContext.request.contextPath}/question/listEtc.ques?page=${i}">
																<c:out value="${i}"/>&nbsp;&nbsp;
															</a>
															</button>
														</c:when>
														<c:otherwise>
															<button>
																<c:out value="${i}"/>&nbsp;&nbsp;
															</button>
														</c:otherwise>
													</c:choose>
				</c:forEach>
				<c:if test="${next}">
							<a href="${pageContext.request.contextPath}/question/listEtc.ques?page=${endPage + 1}">&gt;</a>
				</c:if>
					<!--  
                    <button>1</button>
                    <button>2</button>
                    <button>3</button>
                    <button>4</button>
                    <button>5</button>
                    <button>6</button>
                    <button>7</button>
                    <button>8</button>
                    <button>9</button>
                    <button>10</button>
                    <button>▶</button>
                    -->
                </div>
            </div>

        </section>
        <!-- 어사이드 -->
        <aside>
            <div><a href="#"><img src="http://sinchon.koreaisacademy.com/m/img/main2017/m_it_banner_211126.jpg"></a></div>
            <button class="question-button" onclick="location.href='${pageContext.request.contextPath}/question/writeQuestion.ques'">나도 질문하기</button>
        </aside>
    </main>
    
    <!-- 푸터 -->
    <footer class="footer">
        <div class="footer-wrapper">
            <div class="footer-container">
                <div class="footer-left">
                    <div class="footer-logo">
                        <img class="footer-logo-img" src="${pageContext.request.contextPath}/assets/images/logoPicture.png">
                    </div>
                    <div>
                        <ul class="footer-menu">
                            <li><a>시니어에게 물어봐 소개</a></li>
                            <li><a>이용약관</a></li>
                            <li><a>공지 사항</a></li>
                        </ul>
                        <ul class="footer-information">
                            <li><span>법인명 : dev-web-junior 주식회사</span></li>
                            <li><span>사업자 등록번호 : 111-11-11111</span></li>
                            <li><span>대표자명 : 웹개발주니어</span></li>
                            <li><span>통신판매업신고 : 2022-서울서초-7777호</span></li>
                            <li><span>개인정보보호책임 : 코리아IT아카데미</span></li>
                        </ul>
                        <div class="copyright">© 2022 AskSenior. All rights reserved.</div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/sidebar.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/js/faq.js" type="text/javascript"></script>
</html>