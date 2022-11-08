<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/memberLoginNav.css">
<title></title>
</head>
<body>
   <div id="layout">
        <div class="main_layout">
            <div class="main_view">
                <div class="main">
                    <div class="main_left">
                        <a href="${pageContext.request.contextPath }/main/main.ma">home</a>
                        <h3 class="main_left_text">Ask Senior</h3>
                    </div>
                    <div class="main_right">
                        <div class="screen_body">
                            <div class="screen_wrapper">
                                <div class="screen_inner">
                                    <div class="experts">
                                    </div>
                                    <div class="screen_button">
                                        <button class="start_kakao b_size b_margin">
                                            <img class="kakao_icon" src="../../assets/images/kakao.png">
                                                <use></use>
                                                
                                            </img>
                                            카카오로 로그인
                                        </button>
                                        <button class="start_naver b_size b_margin">
                                            <img class="naver_icon" src="../../assets/images/naver.png">
                                                <use></use>
                                            </img>
                                            네이버로 로그인
                                        </button>
                                        <button onclick ="location.href='/member/login.me'" class="start_email b_size b_margin">
                                            <img class="email_icon" src="../../assets/images/email.png">
                                                <use></use>
                                            </img>
                                            이메일 로그인
                                        </button>
                                          <a style="color:black; text-decoration:none" href="/member/join.me">회원가입</a>
                                        <button class="bottom_button">
                                            
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>