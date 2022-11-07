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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/question/questionList.css">
    <!-- 아이콘 웹사이트 연결 CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
                            <form class="form-search">
                                <input type="search" placeholder="궁금한 것을 검색해보세요." value="${formSearchInput}">
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
                            <li><a href="">전체</a></li>
                            <li><a href="">생활</a></li>
                            <li><a href="">업무 및 회사생활</a></li>
                            <li><a href="">채용</a></li>
                            <li><a href="">자기계발</a></li>
                            <li><a href="">제테크</a></li>
                            <li><a href="">창업</a></li>
                            <li><a href="">기타</a></li>
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

    <!-- 섹션 -->
    <section id="top">
        <div class="container">
            <div class="question-list-title">
                <p><strong>'시니어에게 물어봐'</strong>의 질문 중</p>
                <p><span class="key-word" id="">${searchTitle}</span> 키워드로 검색된 질문은 <span class="search-count" id="">${total}</span>건 입니다.</p>
            </div>
            <form class="search-bar" action="${pageContext.request.contextPath}/question/searchTitle.ques">
                <input type="text" value="예시검색어" name="formSearchInput">
                <button><i id="xMark" class="fa-regular fa-circle-xmark"></i></button>
                <button type="submit"><i id="magnifyingGlass" class="fa-solid fa-magnifying-glass"></i></button>
            </form>
        </div>
    </section>

    <!-- 섹션 -->
    <section id="bottom">
        <div class="container">
            <div class="card">
                <div class="search-period-buttons">
                    <!-- 버튼 클릭 시 active-button 속성 적용하기 -->
                    <button class="active-button">● 전체</button>
                    <button>● 지난 1주</button>
                    <button>● 지난 1달</button>
                    <button>● 지난 1년</button>
                </div>
            </div>
            <c:choose>
				<c:when test="${not empty searchQuestionList and fn:length(searchQuestionList) > 0}">
					<c:forEach var="searchQuestionOne" items="${searchQuestionList}"  varStatus="status"> 
						<div class="question-card">
                <div class="question-title"><span class="key-word">${searchTitle} </span>${namageTitleList.get(status.index)} </div>
                <div class="question-content">
                    ${searchQuestionOne.getQuestionContent()}
                </div>
                <div class="question-bottom">
                    <div class="icon-conatiner">
                        <div><img src="${pageContext.request.contextPath}/assets/images/answer.png"><span id="answerCount">${replyAnswerCountList.get(status.index)}</span></div>
                        <div><img src="${pageContext.request.contextPath}/assets/images/grayStar.png"><span id="scrapCount">${interestingQuestionCountList.get(status.index)}</span></div>
                        <div><img src="${pageContext.request.contextPath}/assets/images/grayThumb.png"> <span id="likeCount">${recommendingQuestionCountList.get(status.index)}</span></div>
                    </div>
                    <div class="write-date" id="writeDate">${searchQuestionOne.getQuestionUpdatedDate()}</div>
                </div>
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
            <div class="question-card">
                <div class="question-title"><span class="key-word">회사</span>에서 특별히 할 일이 없을 때 보통 뭐하시나요?</div>
                <div class="question-content">
                    다른 사람들은 열심히 일하는데 나는 일이 없을 때 분위기를 못 맞춰서 무척 힘드네요.
                    보통 어떻게 시간을 때우시나요?
                    너무 티나게 놀아도 안될거 같고 그렇다고 업무를 챙기는 것도
                </div>
                <div class="question-bottom">
                    <div class="icon-conatiner">
                        <div><img src="${pageContext.request.contextPath}/assets/images/answer.png"><span id="answerCount">3</span></div>
                        <div><img src="${pageContext.request.contextPath}/assets/images/grayStar.png"><span id="scrapCount">1</span></div>
                        <div><img src="${pageContext.request.contextPath}/assets/images/grayThumb.png"> <span id="likeCount">2</span></div>
                    </div>
                    <div class="write-date" id="writeDate">2022.10.21. 17:36</div>
                </div>
            </div>
			-->
            <div>
                <button class="ten-more-button" >10개 더보기</button>
            </div>
        </div>
    </section>

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
<script>
let tenMoreButtonClickCount=0;

	function test(){
		console.log("test");
	}
	
	$(".ten-more-button").on("click",tenMoreButtonClick);
	 function tenMoreButtonClick(){
		tenMoreButtonClickCount++;
		console.log(tenMoreButtonClickCount);
		
		//물어보기
		//페이지 이동을 하면 tenMoreButtonClickCount가 계속 0으로 초기화되므로 ajax를 써야한다
		//location.href = "${pageContext.request.contextPath}/question/searchTitle.ques?plusCount=10&tenMoreButtonClickCount="+tenMoreButtonClickCount;
		
		$.ajax({
		    url: "${pageContext.request.contextPath}/question/searchTitlePlus.ques", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
		    data: { tenMoreButtonClickCount: tenMoreButtonClickCount},  // HTTP 요청과 함께 서버로 보낼 데이터
		    method: "GET",   // HTTP 요청 메소드(GET, POST 등)
		    dataType: "json", // 서버에서 보내줄 데이터의 타입
		    success:showList
		    
		});
	} 
	
	 function showList(plusSearchQuestions){
		let text = "";
		/*jstl은 ""안에 넣자. 안그러면 자바스크립트 문법으로 인식해서 오류*/
		  plusSearchQuestions.forEach((plusSearchQuestion,index) => {
				text += `<div class="question-card">`;
				text += `<div class="question-title"><span class="key-word">${searchTitle}</span>${namageTitleList.get(index+10*tenMoreButtonClickCount)} </div>`;
				
				text += `<div class="question-content">`;
				text += plusSearchQuestion.questionContent;
				text += `</div>`;
				text += `<div class="question-bottom">`;
				text += `<div class="icon-conatiner">`;
				text += `<div><img src="${pageContext.request.contextPath}/assets/images/answer.png"><span id="answerCount">${replyAnswerCountList.get(index+10*tenMoreButtonClickCount)}</span></div>`;
				text += `<div><img src="${pageContext.request.contextPath}/assets/images/grayStar.png"><span id="scrapCount">${interestingQuestionCountList.get(index+10*tenMoreButtonClickCount)}</span></div>`;
				
					text += `<div><img src="${pageContext.request.contextPath}/assets/images/grayThumb.png"> <span id="likeCount">${recommendingQuestionCountList.get(index+10*tenMoreButtonClickCount)}</span></div>`; 
					text += `</div>`;
					text += `<div class="write-date" id="writeDate">`+plusSearchQuestion.questionUpdatedDate+`</div>`;
					text += `</div>`;
					text += `</div>`;
					
			});  
			
			  /* plusSearchQuestions.forEach(plusSearchQuestion => {
				 text += `<div class="question-card">`;
				 text += `<div class="question-title"><span class="key-word">`+`</span>` +`</div>`;
				 text += `<div class="question-content">`;
				 text += plusSearchQuestion.questionContent;
				 text += `</div>`;
				 text += `<div class="question-bottom">`;
				 text += `<div class="icon-conatiner">`;
				 text += `<div><img src="${pageContext.request.contextPath}/assets/images/answer.png"><span id="answerCount">`+`</span></div>`;
				 text += `<div><img src="${pageContext.request.contextPath}/assets/images/grayStar.png"><span id="scrapCount">`+`</span></div>`;
				 text += `<div><img src="${pageContext.request.contextPath}/assets/images/grayThumb.png"> <span id="likeCount">`+`</span></div>`; 
				 text += `</div>`;
				 text += `<div class="write-date" id="writeDate">`+plusSearchQuestion.questionUpdatedDate+`</div>`;
					text += `</div>`;
					text += `</div>`;
				 
			 });  */
			
			/*$(".container").append(text);*/
			/*$(".question-card").append(text);*/
			
			  $(".ten-more-button").before(text);
	} 
	
</script>
</html>