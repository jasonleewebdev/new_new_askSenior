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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/answer/answerWrite.css">
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
                                <input type="search" placeholder="궁금한 것을 검색해보세요.">
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
                            <li><a href="${pageContext.request.contextPath}/question/listAll.ques"">전체</a></li>
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

    <!-- 메인 -->
    <main>

        <!-- 네비게이션 -->
        <nav id="categoryNav">
            <ul>
                <li><a href="${pageContext.request.contextPath}/question/listAll.ques">전체</a></li>
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

            <div class="card-wrapper">
                <div class="question-title">
                    <h1><span id="letterQ">Q.</span> ${questionVO.getQuestionTitle() }</h1>
                    <div>
                        <a href="#">
                            <img class="questioner-profile-image" src="${pageContext.request.contextPath}/assets/images/grayDefaultUserImage.png">${questionVO.getMemberNumber() }
                        </a>
                        <span class="question-updated-date">${questionVO.getQuestionUpdatedDate() }  </span>
                    </div>
                </div>
                <div class="question-content">
                    <p>${questionVO.getQuestionContent() }</p>
                </div>
                <div>
                    <div class="button-wrapper">
                        <!-- 버튼 클릭 시 파란색으로 변화 하고 숫자를 1 올린다. 다시 클릭 시 숫자를 1 내리고 회색으로 바뀐다. -->
                        <button class="interesting-question-button clicked-button" onclick="alert('서비스개발중입니다.');">
                            <i class="fa-solid fa-star"></i> 관심 질문 <span id="interestingQuestionCount">${interestingCount}</span>
                        </button>
                        <button class="recommanding-button" onclick="alert('서비스개발중입니다.');">
                            <i class="fa-solid fa-thumbs-up"></i> 추천 <span id="recommandingQuestionCount">${recommendCount}</span>
                        </button>
                        <button class="like-button" onclick="alert('서비스개발중입니다.');">
                            <i class="fa-solid fa-heart"></i> 좋아요 <span id="likeQuestionCount">${likeCount}</span>
                        </button>
                    </div>
                </div>
            </div>

            <div class="card-wrapper">
            <%--이렇게 내가 만든 또 다른 파라미터 qbunho도 보내고 싶고 form태그 name도 같이 보내고 싶은데 자동으로 지워지므로-> form태그 name데이터를 post로 설정해서 보내자!!!! --%>
                <form action="${pageContext.request.contextPath}/answer/writeAnswerOK.answ?qbunho=${qbunho}" method="post">
                <%--<%=request.setAttribute("qbunho",request.getAttribute("qbunho"))--%>
                    <div class="answer-title">
                        <h1>당신의 지식을 공유해 주세요!</h1>
                    </div>
                    <div>
                        <textarea name="answerContent" class="contents" placeholder="답변을 작성해주세요."></textarea>
                    </div>
                    <div class="button-wrapper">
                        <!--잠시 비활성화  <button class="temp-btn">임시저장</button>-->
                        <button class="btn-primary" type="submit" style="width:100%;">답변 등록</button>
                    </div>
                </form>
        </section>

        <!-- 어사이드 -->
        <aside>
            <div class="notice-box">
                <div class="notice-title">
                    <i id="bulb" class="fa-solid fa-lightbulb"></i>이런 답변은 신고 받을 수 있어요.
                </div>
                <div class="notice-content-wrap">
                    <ul class="notice-content">
                        <li>질문과 관련이 떨어지는 답변</li>
                        <li>질문의 구체적인 내용을 파악하지 않고 예전에 작성했던 답변을 그대로 복사한 답변</li>
                        <li>광고나 홍보 목적의 답변</li>
                        <li>타인의 저작권을 침해한 답변</li>
                        <li>본인 또는 타인의 개인 정보가 노출된 답변</li>
                        <li>불법적인 정보를 제공하는 답변</li>
                    </ul>
                </div>
            </div>

            <div class="ad-box">
                <a href="#"><img src="http://sinchon.koreaisacademy.com/m/img/main2017/m_it_banner_211126.jpg"></a>
            </div>
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
<script src="${pageContext.request.contextPath}/assets/js/askLoginModal.js" type="text/javascript"></script>
</html>