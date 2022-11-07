<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 페이지 로그인</title>
    <link href="../../assets/css/admin/newAdminLogin.css" rel="stylesheet"/>
</head>
<body>
    <div id="center">
        <div id="loginlogo"><img src="../../assets/images/logoText.png"/></div>
        <div id="loginmain">
            <div id="login_title">관리자 로그인</div>
            <div class="firstbox" >
                <div class="secondbox">
                    <div class="thirdbox">
                        <input type="text" class="input_inner" value="아이디"/>
                        <span class="inputimage" id="inputid"></span>
                    </div>
                </div>
            </div>
            <div class="firstbox">
                <div class="secondbox">
                    <div class="thirdbox">
                        <input type="text" class="input_inner" value="비밀번호"/>
                        <span class="inputimage" id="inputpassword"></span>
                    </div>
                </div>
            </div>
            <button id="loginsubmit">로그인</button>
        </div>
        <div id="gourl">
            <span>사용자 페이지로 돌아가기</span>
        </div>
    </div>
</body>
</html>