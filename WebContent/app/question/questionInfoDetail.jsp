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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/question/questionInfoDetail.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/question/askLoginModal.css">
    <!-- 아이콘 웹사이트 연결 CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<!--<jsp:include page="../main/header.jsp"/>-->
<body>
<!--<jsp:include page="../main/header.jsp"/>-->
    <!-- 모달창 -->
    <div class="modal">
        <div class="modal_body">
            <div>
                <h3>이 기능은 회원만 이용할 수 있어요.</h3>
                <p>로그인 할까요?</p>
            </div>
            <div class="btn-wrapper">
                <button id="cancel-btn">취소</button>
                <button id="confirm-btn">확인</button>
            </div>
        </div>
    </div>

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
                            <form class="form-search" action="${pageContext.request.contextPath}/question/searchTitle.ques">
                                <input type="search" placeholder="궁금한 것을 검색해보세요." name="formSearchInput">
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

        <!-- 섹션 버튼 클릭 시 파란색으로 변화 하고 숫자를 1 올린다. 다시 클릭 시 숫자를 1 내리고 회색으로 바뀐다.-->
        <section>
        <div class="card-wrapper">
                <div class="question-title">
                    <h1><span id="letterQ">Q.</span> ${questionDetail.getQuestionTitle()}</h1>
                    <div>
                        <a href="#">
                            <img class="questioner-profile-image" src="${pageContext.request.contextPath}/assets/images/grayDefaultUserImage.png">${questionDetail.getMemberNumber()}
                        </a>
                        <span class="question-updated-date"> ${questionDetail.getQuestionUpdatedDate()} </span>
                    </div>
                </div>
                <div class="question-content">
                    <p>${questionDetail.getQuestionContent()}</p>
                </div>
                <div id="questionButtons" style="display:flex; width:100%;">
                    <div class="button-wrapper" id="questionRelativeButton" style="width: 60%;">
                          
                        <!--  <button class="interesting-question-button clicked-button">-->
                         <button class="interesting-question-button" onclick="alert('서비스개발중입니다.')">
                            <i class="fa-solid fa-star"></i>관심<span id="interestingQuestionCount">${interestingQuestionCount}</span>
                        </button>
                        <button class="recommanding-button" onclick="alert('서비스개발중입니다.')">
                            <i class="fa-solid fa-thumbs-up"></i> 추천 <span id="recommandingQuestionCount">${recommendingQuestionCount} </span>
                        </button>
                        <button class="like-button" onclick="alert('서비스개발중입니다.')">
                            <i class="fa-solid fa-heart"></i>좋아요<span id="likeQuestionCount">${likeQuestionCount}</span>
                        </button>
                     
                    </div>
                     <c:if test="${sessionScope.currentInfoMemberNumber == questionDetail.getMemberNumber()}">
	                    <div id="updateAndRemove">
	                    	<button onclick="location.href='${pageContext.request.contextPath}/question/updateQuestion.ques?qbunho=${questionDetail.getQuestionNumber()}'">수정</button>
	                    	<button onclick="location.href='${pageContext.request.contextPath}/question/deleteQuestionOK.ques?qbunho=${questionDetail.getQuestionNumber()}'">삭제</button>
	                    </div>
                    </c:if>
                </div>
            </div>
        <!--  
            <div class="card-wrapper">
                <div class="question-title">
                    <h1><span id="letterQ">Q.</span> 왜 회사에서 정치를 하나요? 시니어님들도 사내 정치를 하셨나요?</h1>
                    <div>
                        <a href="#">
                            <img class="questioner-profile-image" src="${pageContext.request.contextPath}/assets/images/grayDefaultUserImage.png">웹개발주니어
                        </a>
                        <span class="question-updated-date"> 2022. 10. 21. 21:24 </span>
                    </div>
                </div>
                <div class="question-content">
                    <p>큰 기업일 수록 회사에서 정치질을 잘 할 수록 승진을 잘 하던데 왜 그러나요? 성실히 일하는 사람이 승진을 더 잘햐야 하는데 어떻게 된게 정치질을 잘할 수록 승진이 빠를까요? 정치할거면 여의도나 갈 것이지</p>
                </div>
                <div>
                    <div class="button-wrapper">
                         버튼 클릭 시 파란색으로 변화 하고 숫자를 1 올린다. 다시 클릭 시 숫자를 1 내리고 회색으로 바뀐다. 
                        <button class="interesting-question-button clicked-button">
                            <i class="fa-solid fa-star"></i> 관심 질문 <span id="interestingQuestionCount">1</span>
                        </button>
                        <button class="recommanding-button">
                            <i class="fa-solid fa-thumbs-up"></i> 추천 <span id="recommandingQuestionCount">0</span>
                        </button>
                        <button class="like-button">
                            <i class="fa-solid fa-heart"></i> 좋아요 <span id="likeQuestionCount">0</span>
                        </button>
                    </div>
                </div>
            </div>
            -->
            <button class="answer-button" onclick="checkAnswerWritePrivilege();">답변하기</button>
            <%-- <button class="answer-button" onclick="location.href='${pageContext.request.contextPath}/answer/writeAnswer.answ?qbunho=${questionDetail.getQuestionNumber()}'">답변하기</button>--%>
            <!-- 로그인을 하지 않은 상태에서 답변하기 클릭 시 -->
            <button class="answer-button-open-modal">Modal 띄우기</button>

            <div>
                <h4 class="answer-count-title">총 <span id="answerCount">${total}</span>개의 답변이 있어요.</h4>
                <c:choose>
					<c:when test="${not empty answerList and fn:length(answerList) > 0}">
						<c:forEach var="answerOne" items="${answerList}"  varStatus="status"> 
					<div class="card-wrapper">
                    <div class="answer-title">
                        <a href="#"><img class="answer-profile-image" src="${pageContext.request.contextPath}/assets/images/grayDefaultUserImage.png">${answerOne.getMemberNumber()}</a>
                    </div>
                    <div>
                        <p class="answer-content">
                        ${answerOne.getAnswerContent()}
                           
                        </p>
                    </div>
                    <div>
                        <span class="answer-updated-date">  ${answerOne.getAnswerContent()} </span>
                    </div>    
                    <div>
                        <div class="button-wrapper" id="answerRelativeButton">
                            <button class="recommanding-button" onclick="alert('서비스개발중입니다.')">
                                <i class="fa-solid fa-thumbs-up"></i> 추천 <span id="recommandingAnswerCount">${recommendAnswerCountList.get(status.index)} </span>
                            </button >
                            <button class="like-button" onclick="alert('서비스개발중입니다.')">
                                <i class="fa-solid fa-heart"></i> 좋아요 <span id="likeAnswerCount">${likeAnswerCountList.get(status.index)}</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
				</c:forEach>
					</c:when>
					<c:otherwise>
						<div class="card-wrapper">아무 답변이 없습니다.</div>
					</c:otherwise>
				</c:choose>
                <!--  
                <div class="card-wrapper">
                    <div class="answer-title">
                        <a href="#"><img class="answer-profile-image" src="${pageContext.request.contextPath}/assets/images/grayDefaultUserImage.png">정직한 시니어</a>
                    </div>
                    <div>
                        <p class="answer-content">
                            안녕하세요. 정직한 시니어입니다.
                            저도 많이 공감하는 부분입니다. 저도 처음에는 성실하게 일하면 알아줄꺼라고 생각했지만 은퇴를 하고 보니 그게다가 아니더라고요. 제 생각은 정치하는 사람들이 승진이 빠른이유는 서로 대인 관계를 중요하게 생각하는것 같아요.
                            승진에 관심이 있다면 약간의 정치를 해야 할것같네요. 아님 직장내 동아리 모임이나, 친한분들 위주로 모임들을 만들어 보세요!
                        </p>
                    </div>
                    <div>
                        <span class="answer-updated-date"> 2022. 10. 23. 09:00 </span>
                    </div>    
                    <div>
                        <div class="button-wrapper">
                            <button class="recommanding-button">
                                <i class="fa-solid fa-thumbs-up"></i> 추천 <span id="recommandingAnswerCount">0</span>
                            </button>
                            <button class="like-button">
                                <i class="fa-solid fa-heart"></i> 좋아요 <span id="likeAnswerCount">0</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
			-->
			
            <div class="pager-button-group">
                <!-- 이전 버튼 또는 이후 버튼 없을 시 버튼 비활성화 하고 색 변경하기 -->
                <button class="pager-button disabled-pager-button" onclick="alert('서비스개발중입니다');"><i class="fa-solid fa-arrow-left"></i>이전 질문</button>
                <button class="pager-button" onclick="location.href='${pageContext.request.contextPath}/question/listAll.ques'"><i class="fa-solid fa-list"></i>질문 목록</button>
                <button class="pager-button" onclick="alert('서비스개발중입니다');">다음 질문<i class="fa-solid fa-arrow-right"></i></button>
            </div>
        </section>

        <!-- 어사이드 -->
        <aside>
            <div><a href="#"><img src="http://sinchon.koreaisacademy.com/m/img/main2017/m_it_banner_211126.jpg"></a></div>
            <button class="question-button" onclick="checkQuestionWritePrivilege();">나도 질문하기</button>
            <!-- 로그인을 하지 않은 상태에서 답변하기 클릭 시 -->
            <button class="question-button-open-modal">Modal 띄우기</button>
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
<!--<jsp:include page="../main/footer.jsp"/>-->
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/sidebar.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/js/faq.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/assets/js/askLoginModal.js" type="text/javascript"></script>
<script>
/*  let questionInteresting=0;
	$("#questionRelativeButton").children().eq(0).on("click",function(){
		console.log(questionInteresting);
		console.log($(this));
		if(questionInteresting ==0){
			if($(this).hasClass('clicked-button')){
				//아무것도 안함
			}
			else{
				$(this).addClass('clicked-button');
			} */
			
			/* $.ajax({
			    url: "${pageContext.request.contextPath}/question/scrap.ques", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
			    data: { questionNumber: ${questionDetail.getQuestionNumber()},count:1,memberNumber:${sessionScope.memberNumber} },  // HTTP 요청과 함께 서버로 보낼 데이터
			    method: "GET",   // HTTP 요청 메소드(GET, POST 등)
			    dataType: "json", // 서버에서 보내줄 데이터의 타입
			    success:showInterestingCount
			    
			}); */
			
	/* 		questionInteresting++;
		}
		else{
			
			if($(this).hasClass('clicked-button')){
				$(this).removeClass('clicked-button');
			}
			else{
				//아무것도 안함
			} */
			/* $.ajax({
			    url: "${pageContext.request.contextPath}/question/scrap.ques", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
			    data: { questionNumber: ${questionDetail.getQuestionNumber()},count:-1,memberNumber:${sessionScope.memberNumber}}, // HTTP 요청과 함께 서버로 보낼 데이터
			    method: "GET",   // HTTP 요청 메소드(GET, POST 등)
			    dataType: "json", // 서버에서 보내줄 데이터의 타입
			    success:showInterestingCount
			    
			}); */
			
		/* 	questionInteresting--;
		}
	});
	
	function showInterestingCount(count){
		$("#interestingQuestionCount").html(count);
	}  */
	
	
	function checkQuestionWritePrivilege(){
		 let currentInfoMemberNumber="${sessionScope.currentInfoMemberNumber}";
		 console.log("${sessionScope.currentInfoMemberNumber}");
		 //"null"이 아니라 ""로 빈문자열을 비교해야한다.
		 if(currentInfoMemberNumber==""){
			  let check=confirm("로그인을 하시겠습니까?");
			 if(check){
				 location.href="${pageContext.request.contextPath}/member/login.me";
			 } 
			 else{
				 location.href="${pageContext.request.contextPath}/question/listAll.ques";
			 }
			
		 }
		 else{
			 location.href='${pageContext.request.contextPath}/question/writeQuestion.ques';
		 }
		 
	 };
	 
	 function checkAnswerWritePrivilege(){
		 let currentInfoMemberNumber="${sessionScope.currentInfoMemberNumber}";
		 console.log("${sessionScope.currentInfoMemberNumber}");
		 //"null"이 아니라 ""로 빈문자열을 비교해야한다.
		 if(currentInfoMemberNumber==""){
			  let check=confirm("로그인을 하시겠습니까?");
			 if(check){
				 location.href="${pageContext.request.contextPath}/member/login.me";
			 } 
			 else{
				 location.href="${pageContext.request.contextPath}/question/listAll.ques";
			 }
			
		 }
		 else{
			 
			 location.href='${pageContext.request.contextPath}/answer/writeAnswer.answ?qbunho=${questionDetail.getQuestionNumber()}';
		 }
		 
	 };
</script>
</html>