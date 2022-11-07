<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lecture/lectureMain.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<title>강의 목록 페이지</title>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/app/main/header.jsp"/>

   <!-- 배너 시작 -->
    <section class="banner">
      <div id="banner-img">
        <img src="https://media.a-ha.io/aha-qna/categories/logos/category_tax.png?v=1.2" />
        <div class="class-title">강의</div>
        <div class="class-subtitle">시니어의 이야기</div>
      </div>
    </section>

    <!-- 메인 시작점-->
    <main class="container-new">
      <!-- 네비 시작점-->
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
 
    <!-- 메인 섹션 시작점 -->
      <section class="main-section">
        <div class="article-line-new">
          <!-- 상단 목차 소개 -->
          <h3 class="order-new">전체강의</h3> 
          
          <!-- 강의 소개 article 시작점 -->
          <c:choose>
          <c:when test="${not empty lectures and fn:length(lectures) > 0}">
          <c:forEach var="lecture" items="${lectures}">
          <article class="article-new">
            <a href="${pageContext.request.contextPath}/lecture/lectureDetail.lect?lectureNumber=${lecture.getlectureNumber()}">
            	<div class="taturi-new">
              		<div class="article-img">
                  		<img class="img-size-new"><c:out value="${lecture.getlectureMainImage()}"/>
              		</div>
                	<!--강사 이름  -->
              		<div class="title">
                		<p class="ticher"><c:out value="${lecture.getlectureLecturerIntroduction}"/></p>
              		</div>
              		<!--강의 제목 -->
              		<div class="subtitle"><c:out value="${lecture.getlectureTitle}"/></div>
            	</div>
            </a>
          </article>
          </c:forEach>
          </c:when>
          </c:choose>
          
          <!--
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="http://koreaitschool.net/allupload/File/51.jpg"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>한동석강사님</p>
               
              </div>
              <div class="subtitle">
                프로그램개발 취업 이렇게 준비하자
              </div>
            </div>
          </article>
          
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/a834f9a9-33aa-403f-902e-86beb71b4887/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>정리의희열</p>
              </div>
              <div class="subtitle">
                현대인 맞춤 미니멀 라이프,똑똑한 소비습관 만드는 정리정돈 법칙
              </div>
            </div>
          </article>
          
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/76209616-9c3a-46f6-afbc-f20e7933d94b/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>체통령</p>
              </div>
              <div class="subtitle">이것만 알면 누구나 체형 디자인 전문가</div>
            </div>
          </article>
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/9e20ef6c-3892-475d-84e5-89e532bd2119/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>행복성장연구소 서정현</p>
              </div>
              <div class="subtitle">
                서정현 코치의 셀프리더십 수업: 내 삶의 리더가 되는 5setp
              </div>
            </div>
          </article>
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/bf1be7fc-2b0a-4aa3-8e68-f0fb25f16d7b/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>방구석투잡러 조아</p>
              </div>
              <div class="subtitle">
                하루 10분 일하고 월 200 꾸준히 버는 PDF 전자책 부업 맛보기
              </div>
            </div>
          </article>
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/f5607f4d-4b95-4f36-88b0-a31f9026c797/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>메이커척</p>
              </div>
              <div class="subtitle">날로 먹는 퓨전360 3D모델링</div>
            </div>
          </article>
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/7cdd689a-d796-454f-b92e-6fba50d76a26/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>근육 연구소</p>
              </div>
              <div class="subtitle">
                <근육연구소>와 함께 하는 셀프 통증 관리 클래스
              </div>
            </div>
          </article>
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/374bda81-990a-4154-9861-44168c3ab12c/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>플앤나나</p>
              </div>
              <div class="subtitle">
                작고 귀여운 내 책 출판, 텀블벅에서 교보, 밀리의서재까지
              </div>
            </div>
          </article>
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/65cb7365-d7d6-4945-a16b-83b29ff801e7/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>마노아모</p>
              </div>
              <div class="subtitle">
                건축 비주얼라이징의 모든 것 Part1: 스케치업
              </div>
            </div>
          </article>
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/2ab853b0-2b74-40c9-bbbb-74a5a8e2c1c5/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>원스</p>
              </div>
              <div class="subtitle">
                나의 색감을 담아,아이패드로 시작하는 인물 수채화
              </div>
            </div>
          </article>
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/7561585d-da19-44d9-949c-c9b83db63066/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>마음정원사 언니</p>
              </div>
              <div class="subtitle">
                마음정원사 언니가 알려주는 마음을 지키면서 일하는법
              </div>
            </div>
          </article>
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/92b71f77-9072-4519-aea0-92866643c905/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>제니네일</p>
              </div>
              <div class="subtitle">
                셀럽들도 찾는 유니크 네일 대표 주자 제니네일만의 노하우
              </div>
            </div>
          </article>
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/6d4dfe89-540c-4a90-8e15-5e847df57317/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>
              <div class="title">
                <p>심리전문가 송세인</p>
              </div>
              <div class="subtitle">삶이 유리해지는 설득과 협상 스킬</div>
            </div>
          </article>
          <article class="article-new">
            <div class="taturi-new">
              <div class="article-img">
                <a href="#">
                  <img
                    class="img-size-new"
                    src="https://cdn.class101.net/images/f9294103-809e-47e5-9cef-c312df7a9fb3/640xauto.webp"
                    alt=""
                  />
                </a>
              </div>

              <div class="title">
                <p>김씨네과일</p>
              </div>
              <div class="subtitle">
                국티원탑 과일티셔츠, 전국출장 완판올100%'김씨네과일 의 모든 것'
              </div>
            </div>
          </article>-->
       
          <!-- 하단 버튼 -->
          <div class="Page">
            <div class="page-width">
              <button class="page-button">1</button>
              <button class="page-button">2</button>
              <button class="page-button">3</button>
              <button class="page-button">4</button>
              <button class="page-button">5</button>
              <button class="page-button">6</button>
              <button class="page-button">7</button>
              <button class="page-button">8</button>
              <button class="page-button">9</button>
              <button class="page-button">10</button>
              <span class="material-symbols-outlined page-arrow">
                arrow_right
              </span>
            </div>
          </div>
        
       </div>
    </section>
   
    <!-- aside 시작 -->
    <aside>
       <div><a href=""><img src="http://sinchon.koreaisacademy.com/m/img/main2017/m_it_banner_211126.jpg"></a></div>
       <button>강의 신청하기</button>
   </aside>

</main>
<jsp:include page="${pageContext.request.contextPath}/app/main/footer.jsp"/>
</body>
</html>