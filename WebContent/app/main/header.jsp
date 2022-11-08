<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main/header.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/assets/css/main/sidebar.css">
</head>
<body>

	<%-- 헤더 --%>
	<header>
		<nav class="header">
			<div class="header-wrapper">
				<div class="header-container">
					<button class="header-hamburger">
						<img src="${pageContext.request.contextPath }/assets/images/hamburger.png">
					</button>
					<div class="header-left">
						<a class="header-logo" href="${pageContext.request.contextPath }/main/main.ma">
							<img class="header-logo-img" src="${pageContext.request.contextPath }/assets/images/logoText.png">
						</a>
					</div>
					<div class="header-right">
						<div class="header-right-item search">
							<form class="form-search" action="${pageContext.request.contextPath }/question/searchTitle.ques" name="searchForm">
								<input type="text" placeholder="궁금한 것을 검색해보세요." name="formSearchInput">
							</form>
							<button>
								<img class="icon" src="${pageContext.request.contextPath }/assets/images/search.png" onclick="send()">
							</button>
						</div>
						<div class="header-right-item register">
							<c:choose>
								<c:when test="${not empty sessionScope.memberNumber }">
									<a href="javascript:void(0)">
										<img class="header-profile-image"src="${pageContext.request.contextPath }/assets/images/adminPerson.png">
									</a>
								</c:when>
								<c:otherwise>
									<a class="button-register" href="${pageContext.request.contextPath }/member/login.me">로그인/회원가입</a>
								</c:otherwise>
							</c:choose>	
						</div>
					</div>
				</div>
			</div>
		</nav>
	</header>
	
	<%-- 사이드바 --%>
	<div id="sidebar">
		<div class="sidebar-bg">
			<div class="sidebar">
				<div class="sidebar-inner">
					<div class="sidebar-wrapper">
					
						<%-- 사이드바 헤더 --%>
						<div class="sidebar-header">
							<button class="sidebar-close">
								<img src="${pageContext.request.contextPath }/assets/images/close.png">
							</button>
							<a class="sidebar-home" href="${pageContext.request.contextPath }/main/main.ma">
								시니어에게 물어봐
							</a>
						</div>
						
						<%-- 사이드바 유저 --%>
						<div class="sidebar-user">
							<div class="user-content">
								<img class="profile-image" src="${pageContext.request.contextPath }/assets/images/adminPerson.png">								
								<c:choose>
									<c:when test="${empty sessionScope.memberNumber }">
										<a class="profile-login" href="${pageContext.request.contextPath }/member/login.me">
											로그인하세요
											<img src="${pageContext.request.contextPath }/assets/images/blackArrowRight.png">
										</a>
									</c:when>
									<c:otherwise>
										<a class="profile-login">
                							<span>
                								닉네임
                							</span>
                  						</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>	
							
						<%-- 사이드바 메인 --%>	
						<div class="sidebar-main">
							<a href="${pageContext.request.contextPath }/question/writeQuestion.ques">
								<div>질문하기</div>
							</a>
							<a href="${pageContext.request.contextPath }/lecture/listAll.lect">
								<div>강연</div>
							</a>
							<a href="">
								<div>이용방법</div>
							</a>
						</div>
						
						<%-- 사이드바 메뉴 --%>
						<div class="sidebar-menu">
							<ul>
								<li><a href="${pageContext.request.contextPath }/question/listAll.ques">전체</a></li>
								<li><a href="${pageContext.request.contextPath }/question/listLife.ques">생활</a></li>
								<li><a href="${pageContext.request.contextPath }/question/listBusiness.ques">업무 및 회사생활</a></li>
								<li><a href="${pageContext.request.contextPath }/question/listRecruitment.ques">채용</a></li>
								<li><a href="${pageContext.request.contextPath }/question/listImprovement.ques">자기계발</a></li>
								<li><a href="${pageContext.request.contextPath }/question/listInvestment.ques">제테크</a></li>
								<li><a href="${pageContext.request.contextPath }/question/Foundation.ques">창업</a></li>
								<li><a href="${pageContext.request.contextPath }/question/Etc.ques">기타</a></li>
								<li><a href="javascript:void(0)">공지사항</a></li>
								<li><a href="javascript:void(0)">소개</a></li>
							</ul>
						</div>
						
						<c:choose>
							<c:when test="${empty sessionScope.memberNumber }">
								<div class="sidebar-login">
									<a href="${pageContext.request.contextPath }/member/joinOk.me">회원가입</a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="sidebar-login">
									<a href="${pageContext.request.contextPath }/member/logout.me">로그아웃</a>
								</div>
							</c:otherwise>
						</c:choose>	
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/sidebar.js" type="text/javascript"></script>
<script>

	// 검색어 유효성 체크
	// 검색어 전송
	function send(){
		if(!searchForm.formSearchInput){
			alert("검색어를 입력해주세요.");
			return;
		}
		console.log("들어모");
		searchForm.submit();
	}
</script>
</html>