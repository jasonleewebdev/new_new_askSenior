<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lecture/lectureDetail.css" />
<link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
    />
<title>강의 상세 페이지</title>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/app/main/header.jsp"/>
    <!-- 배너 시작점 -->
    <section class="banner">
      <div id="banner-img">
        <img
          src="https://media.a-ha.io/aha-qna/categories/logos/category_tax.png?v=1.2"
          alt=""
        />
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
                <section id="section01">
                   <!-- article 메인 사진 -->
                   <article id="articel-main-img">
                  
                        <img
                        class="main-img"
                        src="https://cdn.class101.net/images/e16f5209-bf9a-49c4-b429-bfa8792bfb51/1920xauto.webp"
                        alt=""
                        />
                    
                <div id="img-order">
             
                </div>
            </article>
            <!-- 제목 -->
            <article id="article-title">
                <div id="introduce">
                    <div id="Writer">
                        컨셉아트 ㅣ 콕스
                        <div id="title">
                            초보 그림러가 인기 작가가 되는 법, 콕스의 독학비법서
                        </div>
                    </div>
                    <div id="introduce-button">
                        <div id="application">
                            <button id="application-button">강의 신청 하기
                                 
                            </button>
                        </div>
                        <div class="materials">
                            <button class="materials-button">준비물 확인 하기</button>
                        </div>
                        <div class="good">
                            <button class="materials-button">
                                <span class="material-symbols-outlined material-love">
                                    favorite
                      </span>
                      찜하기
                    </button>
                </div>
            </div>
        </div>
    </article>
</section>
<section id="section02">
    <div id="lecture-introduce">
        <span id="lecture-flot"> 강의 소개</span>
    </div>
  
        <!-- 강사 소개 -->
        <article class="teacher">
            <p class="teacher-title">강사 소개</p>
            <img
            class="teacher-img"
            src="https://cdn.class101.net/images/d5c3c084-4224-4cec-b8cb-d16c4b27b668/1920xauto.webp"
            alt=""
            />
            <p class="teacher-p">▶ 콕스 작가_1</p>
            <p class="teacher-p">
                안녕하세요.일러스트레이터이자 유튜브 콕스illust 채널을
                운영하고 있는 콕스입니다.
            </p>
            <p class="teacher-p">
                게임회사에서 컨셉아티슽의 경력과 다양한 기업들과 의 아웃소싱
                작업,
            </p>
            <p class="teacher-p">
                대학교와 아카데미에서의 강의 노하우를 바탕으로 시니어에게
                물어봐에서 강의를 하게 되었습니다.
            </p>
          
        </article>
          <!-- 강의 소개 -->
    <article id="notice">
        <div id="title-line">
            <div class="notice-title">이런 걸 배울 거예요</div>
              
                <div class="notice-img-body">
                    <img
                    class="notice-img-sub"
                    src="https://cdn.class101.net/images/1cd77430-3e5c-4222-96a0-e151c7a2e375/1920xauto.webp"
                    alt=""
                    />
                    <h6>포토샵 활용의 모든 것</h6>
                    <p class="title-p">
                        포토샵 기능 총정리부터 내 그림에 적용하는 법까지,
                        완전정복해봐요,
                    </p>
                </div>
              
            </div>
        </article>
    </section>
</article>
</section>
</div>
</section>
</section>

<!-- aside 시작점 -->
<aside>
    <div><a href=""><img src="http://sinchon.koreaisacademy.com/m/img/main2017/m_it_banner_211126.jpg"></a></div>
    <button>강의 신청하기</button>
</aside>

</main>

<jsp:include page="${pageContext.request.contextPath}/app/main/footer.jsp"/>
</body>
</html>