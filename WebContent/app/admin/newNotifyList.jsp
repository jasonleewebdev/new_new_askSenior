<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>새로운 관리자 메인페이지</title>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link href="${pageContext.request.contextPath}/assets/css/admin/newNotifyList.css" rel="stylesheet"/>
    <style>
        #logo{
    
    display:inline-block;
    width:230px;
    height:100px;
    background-size:100%;
    background-image: url("${pageContext.request.contextPath}/assets/images/newAskseniorLogo.png");
    background-repeat:no-repeat;
    /*background-color:#ffdb49;*/
    position:fixed;
    /*top:0을 하면 안된다. 그러면 브라우저 기준으로 됨*/
    /*left:31px;*/
    
}
.rightarrow{
    
    background-image:url("${pageContext.request.contextPath}/assets/images/blackRightArrowIcon.png");
    background-repeat:no-repeat;
    background-size:contain;
}
.downarrow{
    
    
    background-image:url("${pageContext.request.contextPath}/assets/images/blackDownArrowIcon.png");
    background-repeat:no-repeat;
    background-size:contain;
}
    </style>
</head>
<body>
    <div id="logobox"><div id="logo"><a href="${pageContext.request.contextPath}/admin/memberList.admin"></a></div></div>
    <!---
    <div id="header">
        <div id="logo"><a href="administer_main.html"></a></div>
        <div class="navigation" id="navigation1">
            
            <div><a href="member_maintenance.html">회원 관리</a></div>
            <div><a href="question_maintenance.html">질문 관리</a></div>
            <div><a href="answer_maintenance.html">답변 관리</a></div>
            <div><a href="speech_maintenance.html">강연 관리</a></div>
            <div><a href="report_maintenance.html">신고 관리</a></div>
            <div><a href="info_maintenance.html">공지사항 관리</a></div>
            <div><a href="question_maintenance.html">문의사항 쪽지 관리</a></div>
            
        </div>
        <div class="navigation" id="navigation2">
            <div><a href="#">로그인</a></div>
            <div><a href="#">관리자 계정 관리</a></div>
        </div>
    </div>
-->
    <div id="main_body">
        <div id="subnavigation">
            <ul>
                <li class="menu"> 
                    <a><span>사용자 관리</span><span class="rightarrow"></span></a>
                    <ul class="hide">
                        <li class="normalcolor" style="cursor:pointer" onclick="location.href='${pageContext.request.contextPath}/admin/memberList.admin'"><a>회원 관리</a></li>
                        
                    </ul>
                </li>
                <li class="menu"> 
                    <a><span>컨텐츠 관리</span><span class="rightarrow"></span></a>
                    <ul class="hide">
                        <li class="normalcolor" style="cursor:pointer" onclick="location.href='${pageContext.request.contextPath}/admin/questionList.admin'"><a>질문 관리</a></li>
                        <li class="normalcolor" style="cursor:pointer" onclick="location.href='${pageContext.request.contextPath}/admin/answerList.admin'"><a>답변 관리</a></li>
                        <li class="normalcolor" style="cursor:pointer" onclick="location.href='${pageContext.request.contextPath}/admin/lectureList.admin'"><a>강연 관리</a></li>
                        
                    </ul>
                </li>
                <li class="menu"> 
                    <a><span>공지사항 관리</span><span class="rightarrow"></span></a>
                    <ul class="hide">
                        <li class="normalcolor" style="cursor:pointer" onclick="location.href='${pageContext.request.contextPath}/admin/noticeList.admin'"><a>공지사항 관리</a></li>
                        
                        
                    </ul>
                </li>
                
                
                
                
            </ul>
        </div>
        <div id="subnavigation_result">
            <div id="subnavigation_result_header">
                <div id="subnavigation_result_title">
                    <h2>공지사항목록</h2>
                    <span>작성된 공지사항들 목록입니다</span>
                </div>
                <div id="subnavigation_how_array">
                    <div class="subnavigation_how">
                        <div class="subnavigation_how_title">카테고리</div>
                        <div class="subnavigation_how_main">
                            <select class="selectnormalcolor">
                                <option>생활</option>
                                <option>업무 및 회사생활</option>
                                <option>채용</option>
                                <option>자기계발</option>
                                <option>제테크</option>
                                <option>창업</option>
                                <option>기타</option>
                            </select>
                        </div>
                    </div>
                    <div class="subnavigation_how">
                        <div class="subnavigation_how_title">정렬방식</div>
                        <div class="subnavigation_how_main">
                            <select class="selectnormalcolor">
                                <option>작성일 오름차순</option>
                                <option>작성일 내림차순</option>
                                <option>공지사항번호 오름차순</option>
                                <option>공지사항번호 내림차순</option>
                            </select>
                        </div>
                    </div>
                    <div id="inquire"><button>조회</button></div>
                </div>

            </div>

            <div id="subnavigation_result_body">
                <div id="subnavigation_search_and_delete">
                    <div id="subnavigation_search">
                        <span></span>
                        <input type="text" name="search_member" placeholder="검색"/>
                    </div>
                    
                </div>
                <div id="subnavigation_list">
                    <div id="subnavigation_list_title">
                        
                        <span>공지사항 번호</span>
                        <span>제목</span>
                        <span>카테고리</span>
                        <span>내용</span>
                        <span>작성 일자</span>
                        
                    </div>
                    
                    <c:choose>
                    	<c:when test="${not empty noticeList and fn:length(noticeList) > 0}">
                                          <c:forEach var="noticeOne" items="${noticeList}">
                                              <c:set var="gowhat" value="${noticeOne.getNoticeNumber()}"/>
                                              
                                            <div class="subnavigation_list_detail" >
                                             <a class="subnavigation_list_detail" href="${pageContext.request.contextPath}/admin/noticeDetail.admin?nbunho=${gowhat}">
                                                <span><c:out value="${noticeOne.getNoticeNumber()}"/></span>
                                                <span><c:out value="${noticeOne.getNoticeTitle()}"/></span>
                                                <span><c:out value="${noticeOne.getNoticeCategory()}"/></span>                                                                                                                                                                                                                                             
                                                <span><c:out value="${noticeOne.getNoticeContent()}"/></span>
                                                <span><c:out value="${noticeOne.getNoticeUpdatedDate()}"/></span>
                                            </a> 
                                            </div> 
                                             
                                          </c:forEach>
                                       </c:when>
                                       <c:otherwise>
                                          
                                             <span>등록된 게시물이 없습니다.</span>
                                          
                                       </c:otherwise>
                    </c:choose>
                    
                    <!-- <div class="subnavigation_list_detail">
                        
                        <span>1</span>
                        <span>사용자 이용수칙</span>
                        <span>2022-10-23</span>
                        <span>욕설과 비속어는 사용불가입니다.</span>
                        
                    </div>
                    <div class="subnavigation_list_detail">

                        <span>1</span>
                        <span>사용자 이용수칙</span>
                        <span>2022-10-23</span>
                        <span>욕설과 비속어는 사용불가입니다.</span>
                    </div>
                    <div class="subnavigation_list_detail">
                        <input type="checkbox" name="select_member"/>
                      
                        <span>1</span>
                        <span>사용자 이용수칙</span>
                        <span>2022-10-23</span>
                        <span>욕설과 비속어는 사용불가입니다.</span>
                    </div>
                    <div class="subnavigation_list_detail">
                        <input type="checkbox" name="select_member"/>
                        <span>1</span>
                        <span>사용자 이용수칙</span>
                        <span>2022-10-23</span>
                        <span>욕설과 비속어는 사용불가입니다.</span>
                    </div>
                    <div class="subnavigation_list_detail">
                        <input type="checkbox" name="select_member"/>
                        <span>1</span>
                        <span>사용자 이용수칙</span>
                        <span>2022-10-23</span>
                        <span>욕설과 비속어는 사용불가입니다.</span>
                    </div>
                    <div class="subnavigation_list_detail">
                        <input type="checkbox" name="select_member"/>
                        <span>1</span>
                        <span>사용자 이용수칙</span>
                        <span>2022-10-23</span>
                        <span>욕설과 비속어는 사용불가입니다.</span>
                    </div>
                    <div class="subnavigation_list_detail">
                        <input type="checkbox" name="select_member"/>
                        <span>1</span>
                        <span>사용자 이용수칙</span>
                        <span>2022-10-23</span>
                        <span>욕설과 비속어는 사용불가입니다.</span>
                    </div>
                    <div class="subnavigation_list_detail">
                        <input type="checkbox" name="select_member"/>
                        <span>1</span>
                        <span>사용자 이용수칙</span>
                        <span>2022-10-23</span>
                        <span>욕설과 비속어는 사용불가입니다.</span>
                    </div>
                    <div class="subnavigation_list_detail">
                        <input type="checkbox" name="select_member"/>
                        <span>1</span>
                        <span>사용자 이용수칙</span>
                        <span>2022-10-23</span>
                        <span>욕설과 비속어는 사용불가입니다.</span>
                    </div>
                    <div class="subnavigation_list_detail">
                        <input type="checkbox" name="select_member"/>
                        <span>1</span>
                        <span>사용자 이용수칙</span>
                        <span>2022-10-23</span>
                        <span>욕설과 비속어는 사용불가입니다.</span>
                    </div> -->
                </div>
            
                

            </div>
            
           
            <div id="page_action">
              
                <div id="page_arrow">
                    <c:choose>
					<c:when test="${prev}">  
                    
						<a style="width : 100px; color:black;"  href="${pageContext.request.contextPath}/admin/noticeList.admin?page=${page - 1}">&lt;</a>
	       
					
                    </c:when>
                  <c:otherwise>
                  	<a style="width : 100px; color:black;" href="javascript::void(0)"></a>
                   </c:otherwise>
                   </c:choose>
                    <a style="width : 100px; color:black;" href="${pageContext.request.contextPath}/admin/noticeList.admin?page=${page}">${page}</a> 
                  
                   
                    <c:choose>
                  <c:when test="${next}">
	                
						<a style="width : 100px; color:black;" href="${pageContext.request.contextPath}/admin/noticeList.admin?page=${page + 1}">&gt;</a>
	                    
					</c:when>
                   <c:otherwise>
                  	<a style="width : 100px; color:black;" href="javascript::void(0)"></a>
                   </c:otherwise>
                    
					</c:choose>	
                </div>
            
            
            </div>  
            
            
        </div>
    </div>
</body>
<script>
    let flag=0;
    let prev;
    let flag2=0;
    let prev2;
// html dom 이 다 로딩된 후 실행된다
$(document).ready(function(){
    // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
    $(".menu>a").click(function(){
        var submenu = $(this).next("ul");
        // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기            
        if( submenu.is(":visible") ){
            submenu.slideUp();
            $(this).css('backgroundColor','#293a50');
        }else{
            //클릭하고나서 화면상에 안보일시 무조건 펼친다.
            submenu.slideDown();
          
            $(this).css('backgroundColor','#3a495e');
        }

        var arrow=$(this).children().eq(1);
        if(arrow.hasClass('rightarrow')){
            arrow.removeClass('rightarrow');
            arrow.addClass('downarrow');
        }
        else if(arrow.hasClass('downarrow')){
            arrow.removeClass('downarrow');
            arrow.addClass('rightarrow');
        }
        
    });
    
   /* $(".hide>li").click(function(){
        
        flag++;
        
        
        
        if(flag%2==1){
            $(this).css('backgroundColor','#5468e2');
            $(prev).css('backgroundColor','#2d3e53');
            prev=$(this);
            
            
        }
        else{
            $(this).css('backgroundColor','#2d3e53');
            $(prev).css('backgroundColor','#2d3e53');
            prev=$(this);
        }
        */
        /*style의 backgroundColor이라 안가져와진다
        if($(this).attr('backgroundColor')=='#5468e2'){
            $(this).css('backgroundColor','#2d3e53');
        }
        */
        /*
        else if($(this).attr('backgroundColor')=='#2d3e53'){
            $(this).css('backgroundColor','#5468e2');
        }
        */
   /* });*/
    
   $(".hide>li").click(function(){
    if($(this).hasClass('normalcolor')){
            $(this).removeClass('normalcolor');
            $(this).addClass('clickcolor');
            console.log($(this).hasClass('clickcolor'));
            if(flag!=0){
                $(prev).removeClass('clickcolor');
                $(prev).addClass('normalcolor');
            }
            

            prev=$(this);
            flag++;
            console.log("변경됨");
        }
        else if($(this).hasClass('clickcolor')){
            $(this).removeClass('clickcolor');
            $(this).addClass('normalcolor');
            prev=$(this);
            console.log($(this).attr('backgroundColor'));
        }
   });

   $(".subnavigation_how_main>select").click(function(){
    if($(this).hasClass('selectnormalcolor')){
            $(this).removeClass('selectnormalcolor');
            $(this).addClass('selectclickcolor');
            console.log($(this).hasClass('selectclickcolor'));
            if(flag2!=0){
                $(prev2).removeClass('selectclickcolor');
                $(prev2).addClass('selectnormalcolor');
            }
            

            prev2=$(this);
            flag2++;
            console.log("변경됨");
        }
        else if($(this).hasClass('selectclickcolor')){
            $(this).removeClass('selectclickcolor');
            $(this).addClass('selectnormalcolor');
            prev2=$(this);
            console.log($(this).attr('backgroundColor'));
        }
   });
    
});
</script>

</html>