<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lecture/lectureSubscription.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<title>강의 신청 페이지</title>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/app/main/header.jsp"/>
    <!-- 배너 시작점 -->
    <section class="banner">
      <div id="banner-img">
        <img src="https://media.a-ha.io/aha-qna/categories/logos/category_tax.png?v=1.2" />
        <div class="class-title">강의</div>
        <div class="class-subtitle">시니어의 이야기</div>
      </div>
    </section>
    <!-- 메인 시작점 -->
    <main class="container">
      <!-- 네비 시작점 -->
      <nav id="categoryNav">
        <ul>
          <li><a href="#">전체강의</a></li>
          <li>
            <hr />
            <a href="#">새로 오픈한 강의</a>
          </li>
          <li>
            <hr />
            <a href="#">실시간 인기 TOP15</a>
          </li>
          <li>
            <hr />
            <a href="#">트랜드</a>
          </li>
          <li>
            <hr />
            <a href="#">라이프스타일</a>
          </li>
          <li>
            <hr />
            <a href="#">창업</a>
          </li>
          <li>
            <hr />
            <a href="#">스타트업</a>
          </li>
          <li>
            <hr />
            <a href="#">기타</a>
          </li>
          <li>
            <hr />
            <a href="#">지난 강의</a>
          </li>
        </ul>
      </nav>

      <!-- 메인 섹션 시작 -->
      <section class="article-body">
        <section id="section01"></section>
        <article class="Information01">
          <h2>강의신청 정보</h2>
          <div class="title">
            <p>강의명</p>
          </div>
          <div class="subtitle">
            셀럽들도 찾는 유니크 네일 대표 주자 제니네일만의 노하우
          </div>
          <div class="title">
            <p>기간ㅣ일정</p>
          </div>
          <div class="subtitle">2022.10.25 ㅣ 20:00</div>
          <div class="title">
            <p>장소</p>
          </div>
          <div class="subtitle">온라인 강의장</div>
          <div class="title">
            <p>문의</p>
          </div>
          <div class="subtitle">
            캠퍼스 0312-0124-1234 Hong Gil Dong @ gmaim.com
          </div>
        </article>
        <form action="#">
          <article class="Information02">
            <h2>신청자 정보</h2>
            <div class="title">
              <p>이름</p>
            </div>
            <div class="field">
              <input
                type="text"
                name="name"
                placeholder="이름을 입력해주세요"
              />
            </div>
            <div class="title">
              <p>핸드폰</p>
            </div>
            <div class="field">
              <input
                type="text"
                name="phoneNumber"
                placeholder="핸드폰번호 - 없이 입력해주세요"
              />
            </div>
            <div class="title">
              <p>이메일</p>
            </div>
            <div class="field">
              <input
                type="text"
                name="email"
                placeholder="이메일을 입력해주세요"
              />
            </div>
          </article>
        </form>
        <article>
          <ul
            class="application"
            style="display: flex; justify-content: center"
          >
            <li>
              <input
                type="button"
                value="강의 신청 완료"
                class="application-button"
                onclick="send()"
              />
              <input
                type="button"
                value="강의 신청 취소"
                class="application-button"
                onclick=""
              />
            </li>
          </ul>
        </article>
      </section>
      <!-- aside 시작점 -->
      <aside>
        <div>
          <a href="#"
            ><img
              src="http://sinchon.koreaisacademy.com/m/img/main2017/m_it_banner_211126.jpg"
          /></a>
        </div>
        <button>강의 신청하기</button>
      </aside>
    </main>
<jsp:include page="${pageContext.request.contextPath}/app/main/footer.jsp"/>
</body>
</html>