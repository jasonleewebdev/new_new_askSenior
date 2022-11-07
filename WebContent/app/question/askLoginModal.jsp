<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <title>Modal</title>
    <link rel="stylesheet" href="../../assets/css/question/askLoginModal.css">
</head>

<jsp:include page="../main/header.jsp"/>
<body class="modal">

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
    
    <button class="btn-open-popup">Modal 띄우기</button>
    <div>
        <div>
        Consequuntur deleniti facilis nisi quia. Accusantium adipisci animi atque blanditiis corporis ducimus earum, facilis fugiat iusto maiores
        mollitia nisi nobis officia quas quasi qui quia, ratione sint, voluptas voluptates voluptatibus!
        </div>
    </div>
    <!--  
    <script>
        const body = document.querySelector('body');
        const modal = document.querySelector('.modal');
        const btnOpenPopup = document.querySelector('.btn-open-popup');

        btnOpenPopup.addEventListener('click', () => {
            modal.classList.toggle('show');

            if (modal.classList.contains('show')) {
                body.style.overflow = 'hidden';
            }
        });

        modal.addEventListener('click', (event) => {
            if (event.target === modal) {
                modal.classList.toggle('show');
                
                if (!modal.classList.contains('show')) {
                    body.style.overflow = 'auto';
                }
            }
        });
        </script>
        -->
</body>
<jsp:include page="../main/footer.jsp"/>
<script>
        const body = document.querySelector('body');
        const modal = document.querySelector('.modal');
        const btnOpenPopup = document.querySelector('.btn-open-popup');

        btnOpenPopup.addEventListener('click', () => {
            modal.classList.toggle('show');

            if (modal.classList.contains('show')) {
                body.style.overflow = 'hidden';
            }
        });

        modal.addEventListener('click', (event) => {
            if (event.target === modal) {
                modal.classList.toggle('show');
                
                if (!modal.classList.contains('show')) {
                    body.style.overflow = 'auto';
                }
            }
        });
        </script>
</html>
