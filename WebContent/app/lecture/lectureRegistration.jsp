<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/lecture/lectureRegistration.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<title>강의 등록 페이지</title>
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
          <li><a href="${pageContext.request.contextPath}/lecture/listAll.lect">전체강의</a></li>
          <li>
            <hr />
            <a href="javascript:void(0)" onclick="alert('서비스개발중입니다.');">새로 오픈한 강의</a>
          </li>
          <li>
            <hr />
            <a href="javascript:void(0)" onclick="alert('서비스개발중입니다.');">실시간 인기 TOP15</a>
          </li>
          <li>
            <hr />
            <a href="javascript:void(0)" onclick="alert('서비스개발중입니다.');">트랜드</a>
          </li>
          <li>
            <hr />
            <a href="javascript:void(0)" onclick="alert('서비스개발중입니다.');">라이프스타일</a>
          </li>
          <li>
            <hr />
            <a href="javascript:void(0)" onclick="alert('서비스개발중입니다.');">창업</a>
          </li>
          <li>
            <hr />
            <a href="javascript:void(0)" onclick="alert('서비스개발중입니다.');">스타트업</a>
          </li>
          <li>
            <hr />
            <a href="javascript:void(0)" onclick="alert('서비스개발중입니다.');">기타</a>
          </li>
          <li>
            <hr />
            <a href="javascript:void(0)" onclick="alert('서비스개발중입니다.');">지난 강의</a>
          </li>
        </ul>
      </nav>
	
      <!-- 메인 섹션 시작 -->
      
      <section class="article-body">
		<form action="${pageContext.request.contextPath}/lecture/registrationOK.lect" name="writeForm" method="post" enctype="multipart/form-data">
        <section id="section01">
          <h2>강의 등록</h2>
          <!-- <form action="#" name="#" method="#"> -->
            <!-- <label for="file"> -->
              
              <div class="label_box">
                <label for="img_main01" class="file_style">메인 이미지 </label>
                <!--<label for="img_main02" class="file_style">강사 이미지</label>
                <label for="img_main03" class="file_style">강의 소개 이미지</label>-->
              </div>
            <div class="upload">
              <img id="user_image01" src="#"  alt="">
              <input type="file" accept="image/*" name="lectureMainImage" onchange="PreviewImage01();" id="img_main01" >
            </div><!--
            <div class="upload">
              <img id="user_image02" src="#"  alt="">
              <input type="file" accept="image/*" name="lectureLecturerImage" onchange="PreviewImage02();" id="img_main02" >
            </div>
            
            <div class="upload">
              <img id="user_image03" src="#"  alt="">
              <input type="file" accept="image/*" name="lectureIntroductionImage" onchange="PreviewImage03();" id="img_main03" >
            </div>-->

          <!-- <input type="file" name="file" id="file"> -->
          <div class="title">
            <div>제목</div>
          </div>
          <div class="field">
            <input type="text" name="lectureTitle" placeholder="제목을 입력해주세요"/>
          </div>
        </section>
 		<div class="title">
            <div>강연자 이름</div>
          </div>
          <div class="field">
          <input
          type="text"
          name="lectureLecturerIntroduction"
          placeholder="이름을 입력해주세요"
          />
        </div>
        <%-- <div class="title">
          <div>이메일</div>
        </div>
        <div class="field">
          <input
          type="text"
          name="email"
          placeholder="이메일을 입력해주세요"
          />
        </div>--%>
        
        <div class="title">
          <div>카테고리</div>
        </div>
        <div class="field">
			<select name="lectureCategory">
			    <option value="생활">생활</option>
			    <option value="업무 및 회사생활">업무 및 회사생활</option>
			    <option value="채용">채용</option>
			    <option value="자기계발">자기계발</option>
			    <option value="제테크">제테크</option>
			    <option value="창업">창업</option>
			    <option value="기타">기타</option>
			</select>
        </div>
        
        <div class="title">
          <div>강연 일자</div>
        </div>
        <div class="field">
          <input type="date" name="lectureDate">
        </div>
        <div class="title">
          <div>강연 장소</div>
        </div>
        <div class="field">
        	<input type="text" name="lectureLocation" id="sample5_address" placeholder="주소">
			<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
			<div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
        </div>
        
        <div class="title">
          <div>모집인원</div>
        </div>
        <div class="field">
          <input
          type="number"
          name="lectureLimitNumber"
          placeholder="모집인원을 숫자로 입력해주세요"
          />
        </div>
        <div class="title">
          <div>신청 시작일</div>
        </div>
        <div class="field">
          <input type="date" name="lectureSignupStartDate">
        </div>
        
        <div class="title">
          <div>신청 종료일</div>
        </div>
        <div class="field">
          <input type="date" name="lectureSignupEndDate">
        </div>
      <%-- </article>--%>
      
      <section id="section02">
        
        
        <h4>강의 소개</h4>
        <div class="introduce">
          <textarea name="lectureContent" id="" cols="30" rows="10"  placeholder="강의 소개를 해주세요"></textarea>
        </div>
      </section>
      
	   <article>
		    <ul class="application" style="display:flex; justify-content:center;">
		      <li>
		        <%--<button type="submit" value="강의 작성 완료" class="application-button" >강의 작성 완료</button> --%>
		       	<input type="submit" value="강의 작성 완료" class="application-button" onclick="send()"/>
		      </li>
		   	</ul>
        </article>
		</form>
      </section>
	
      <!-- aside 시작점 -->
      <aside>
       <!-- <div><a href="#" onclick="alert('서비스개발중입니다.');"><img src="http://sinchon.koreaisacademy.com/m/img/main2017/m_it_banner_211126.jpg"></a></div>-->
       <button onclick="location.href='${pageContext.request.contextPath}/lecture/registration.lect'">강의 등록하기</button>
   </aside>
     
    </main>
<jsp:include page="${pageContext.request.contextPath}/app/main/footer.jsp"/>
</body>
<script src="${pageContext.request.contextPath}/assets/js/lectureRegistration.js"></script>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=78cc82df32148841ce2486255747c504&libraries=services"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });


    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
</script>
<script>
function send(){
    /*if(!writeForm.lectureTitle){
       alert("제목을 작성해주세요.");
       return;
    }
    
    if(!writeForm.lectureContent){
       alert("내용을 작성해주세요.");
       return;
    }
    */
    writeForm.submit();
 }
</script>
</html>