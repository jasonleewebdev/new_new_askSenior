<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fn" %>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/memberJoin.css">
<title>회원가입</title>
</head>
<style>   
   span#result{
      color:red;
   }
</style>
<body>
   <div class="layout">
        <div class="layout_default">
            <main class="layout_view">
                <div class="join_login">
                    <form method="post" action="${pageContext.request.contextPath}/app/member/memberLoginNav.jsp" class="join_login_form size_full" name="joinForm">
                        <div class="screen">
                            <header class="screen_header">
                                <!-- button -->
                                <a href="javascript:void(0)">
                                    <img src="${pageContext.request.contextPath}/assets/images/graduationCap.png" alt="">
                                </a>
                            </header>
                            <div class="screen_body">
                                <h1 class="text_title">
                                    <span>회원 가입</span>
                                </h1>
                                <div class="join_body">
                                    <div class="join_body_input">
                                        <div class="text_field -error">
                                            <label class="text_field_label">
                                                이메일&nbsp;&nbsp;&nbsp;
                                                <span id="result"></span>
                                            </label>
                                            <div class="text_field_body">
                                                <input type="text" name="memberEmail" placeholder="아이디를 입력해주세요" id="memberEmail" class="text_field_body_input" onfocus="this.placeholder=''" onblur="this.placeholder='아이디를 입력해주세요'">
                                                <div class="text_field_footer">
                                                    <img src="" alt="">
                                                    <span>필수 항목입니다</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="text_field -error">
                                            <label class="text_field_label">
                                                비밀번호
                                            </label>
                                            <div class="text_field_body">
                                                <input type="password" name="memberPw" id="memberPw" placeholder="비밀번호를 입력해주세요" class="text_field_body_input pw" onfocus="this.placeholder=''" onblur="this.placeholder='비밀번호를 입력해주세요'">
                                                <div class="text_field_footer">
                                                    <img src="" alt="">
                                                    <span>필수 항목입니다</span>
                                                </div>
                                                <button type="button" class="text_field_body_btn">
                                                    <img src="${pageContext.request.contextPath}/assets/images/blackButtonOn.png" alt="" class="eyes">
                                                </button>
                                            </div>
                                        </div>
                                        <div class="text_field -error">
                                            <label class="text_field_label">
                                                비밀번호 확인
                                            </label>
                                            <div class="text_field_body">
                                                <input id="memberPw2" type="password" placeholder="비밀번호를 입력해주세요" class="text_field_body_input pw" onfocus="this.placeholder=''" onblur="this.placeholder='비밀번호를 입력해주세요'">
                                                <div class="text_field_footer">
                                                    <img src="" alt="">
                                                    <span>필수 항목입니다</span>
                                                </div>
                                                <button type="button" class="text_field_body_btn">
                                                    <img class="eyes" src="${pageContext.request.contextPath}/assets/images/blackButtonOn.png" alt="">
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <footer class="screen_footer">
                                <button type="submit" class="join_btn" onclick="send()">회원 가입</button>
                            </footer>
                        </div>
                    </form>
                </div>
            </main>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/memberJoin.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
$(document).ready(function(){

     $('.eyes').on('click', function(){
       var passwordField = $('.pw');
       var passwordFieldType = passwordField.attr('type');

       if(passwordFieldType == 'password')
       {
           passwordField.attr('type', 'text');
           $(this).val('Hide');
       } else {
           passwordField.attr('type', 'password');
           $(this).val('Show');
       }
       
     });
});
 $(function(){
   $('#memberPw2').blur(function(){
      if($('#memberPw').val() != $('#memberPw2').val()){
          if($('#memberPw2').val()!=''){
            alert("비밀번호가 다릅니다.");
            $('#memberPw2').val('');
             $('#memberPw2').focus();
          }
       }
   })        
});
</script>
</html>