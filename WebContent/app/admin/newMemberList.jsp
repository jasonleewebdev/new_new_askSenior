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
    <title>새로운 멤버 리스트</title>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link href="${pageContext.request.contextPath}/assets/css/admin/newMemberList.css" rel="stylesheet"/>
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

#subnavigation_search>span{
    background-image:url("${pageContext.request.contextPath}/assets/images/findGlassSearchIcon.png");
    background-size:contain;
    background-repeat:no-repeat;
    display:inline-block;
    width:30px;
    height:30px;
    /*그림과 옆요소 수직정렬 맞추기*/
    vertical-align:bottom;
}
#page_arrow{
    height:100%;
    width:300px;
    margin-left:500px;

    display:flex;
}
#page_arrow>span{
    display:inline-block;
    width:36px;
    height:36px;
    
    
}
.prev_a {
	background-image:url("${pageContext.request.contextPath}/assets/images/blackLeftArrowIcon.png");
    background-size:contain;
    background-repeat:no-repeat;
}

.next_a {
	background-image:url("${pageContext.request.contextPath}/assets/images/blackRightArrowIcon.png");
    background-size:contain;
    background-repeat:no-repeat;
    margin-left:100px;
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
                    <h2>회원목록</h2>
                    <span>가입된 회원들 목록입니다</span>
                </div>
                <div id="subnavigation_how_array">
                    <div class="subnavigation_how">
                        <div class="subnavigation_how_title">카테고리</div>
                        <div class="subnavigation_how_main">
                            <select class="selectnormalcolor" name="type" id="type">
                                <option value="m">회원번호</option>
                                <option value="e">이메일</option>
                                <option value="N">닉네임</option>
                                <option value="n">이름</option>
                            </select>
                        </div>
                    </div>
                    <div class="subnavigation_how">
                        <div class="subnavigation_how_title">정렬방식</div>
                        <div class="subnavigation_how_main">
                            <select class="selectnormalcolor">
                                <option value="a">오름차순</option>
                                <option value="d">내림차순</option>
                                
                            </select>
                        </div>
                    </div>
                    <div id="inquire"  name="keyword" id="keyword"><button onclick="show()">조회</button></div>
                </div>

            </div>

            <div id="subnavigation_result_body">
                <div id="subnavigation_search_and_delete">
                    <div id="subnavigation_search">
                        <span onclick="show()" style="cursor:pointer"></span>
                        <input type="text" name="search_member" placeholder="검색"/>
                    </div>
                    
                </div>
                <div id="subnavigation_list">
                    <div id="subnavigation_list_title">
                        
                        <span>회원번호</span>
                        <span>닉네임</span>
                        <span>비밀번호</span>
                        <span>인사말</span>
                        <span>가입방식</span>
                        <span>이름</span>
                        <span>전화번호</span>
                        <span>프로필 사진 주소</span>
                    </div>
                    <c:choose>
                    	<c:when test="${not empty memberList and fn:length(memberList) > 0}">
                                          <c:forEach var="memberOne" items="${memberList}">
                                              <c:set var="gowhat" value="${memberOne.getMemberNumber()}"/>
                                              
                                            <div class="subnavigation_list_detail" >
                                             <a class="subnavigation_list_detail" href="${pageContext.request.contextPath}/admin/memberDetail.admin?mbunho=${gowhat}">
                                                <span><c:out value="${memberOne.getMemberNumber()}"/></span>
                                                <span><c:out value="${memberOne.getMemberNickname()}"/></span>
                                                <span><c:out value="${memberOne.getMemberPassword()}"/></span>
                                                <span><c:out value="${memberOne.getMemberGreetings()}"/></span>
                                                <span><c:out value="${memberOne.getMemberJoinType()}"/></span>
                                                <span><c:out value="${memberOne.getMemberName()}"/></span>
                                                <span><c:out value="${memberOne.getMemberPhoneNumber()}"/></span>
                                                <span><c:out value="${memberOne.getMemberProfileImage()}"/></span>
                                            </a> 
                                            </div> 
                                             
                                          </c:forEach>
                                       </c:when>
                                       <c:otherwise>
                                          
                                             <span>등록된 게시물이 없습니다.</span>
                                          
                                       </c:otherwise>
                    </c:choose>
                    
	                     <%-- <c:choose>
							<c:when test="${not empty boards and fn:length(boards) > 0}">
								<c:forEach var="board" items="${boards}">
									<tr>
										<td><c:out value="${board.getBoardNumber()}"/></td>
										<td><a href="${pageContext.request.contextPath}/board/boardDetail.bo?boardNumber=${board.getBoardNumber()}"><c:out value="${board.getBoardTitle()}"/></a></td>
										<td><c:out value="${board.getMemberId()}"/></td>
										<td><c:out value="${board.getBoardDate()}"/></td>
										<td><c:out value="${board.getBoardReadCount()}"/></td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose> --%>
                   
                   
                   
                    <!--  
                    <div class="subnavigation_list_detail" name="1">
                        <a href="/admin/memberDetail.admin?name=1">
                        <span>itking</span>
                        <span>it제왕</span>
                        <span>2022-10-23</span>
                        <span>직장인 20년차</span>
                        <span>한국대학교 컴퓨터과 졸업</span>
                        <span>정보처리기사. 정보보안기사.</span>
                        <span>10</span>
                        <span>100</span>
                        </a>
                    </div>
                    <div class="subnavigation_list_detail" name="2">
                        
                        <span>itking</span>
                        <span>it제왕</span>
                        <span>2022-10-23</span>
                        <span>직장인 20년차</span>
                        <span>한국대학교 컴퓨터과 졸업</span>
                        <span>정보처리기사. 정보보안기사.</span>
                        <span>10</span>
                        <span>100</span>
                    </div>
                    <div class="subnavigation_list_detail" name="3">
                      
                        <span>itking</span>
                        <span>it제왕</span>
                        <span>2022-10-23</span>
                        <span>직장인 20년차</span>
                        <span>한국대학교 컴퓨터과 졸업</span>
                        <span>정보처리기사. 정보보안기사.</span>
                        <span>10</span>
                        <span>100</span>
                    </div>
                    <div class="subnavigation_list_detail" name="4">
                    
                        <span>itking</span>
                        <span>it제왕</span>
                        <span>2022-10-23</span>
                        <span>직장인 20년차</span>
                        <span>한국대학교 컴퓨터과 졸업</span>
                        <span>정보처리기사. 정보보안기사.</span>
                        <span>10</span>
                        <span>100</span>
                    </div>
                    <div class="subnavigation_list_detail" name="5">
                     
                        <span>itking</span>
                        <span>it제왕</span>
                        <span>2022-10-23</span>
                        <span>직장인 20년차</span>
                        <span>한국대학교 컴퓨터과 졸업</span>
                        <span>정보처리기사. 정보보안기사.</span>
                        <span>10</span>
                        <span>100</span>
                    </div>
                    <div class="subnavigation_list_detail" name="6">
                     
                        <span>itking</span>
                        <span>it제왕</span>
                        <span>2022-10-23</span>
                        <span>직장인 20년차</span>
                        <span>한국대학교 컴퓨터과 졸업</span>
                        <span>정보처리기사. 정보보안기사.</span>
                        <span>10</span>
                        <span>100</span>
                    </div>
                    <div class="subnavigation_list_detail" name="7">
                   
                        <span>itking</span>
                        <span>it제왕</span>
                        <span>2022-10-23</span>
                        <span>직장인 20년차</span>
                        <span>한국대학교 컴퓨터과 졸업</span>
                        <span>정보처리기사. 정보보안기사.</span>
                        <span>10</span>
                        <span>100</span>
                    </div>
                    <div class="subnavigation_list_detail" name="8">
                     
                        <span>itking</span>
                        <span>it제왕</span>
                        <span>2022-10-23</span>
                        <span>직장인 20년차</span>
                        <span>한국대학교 컴퓨터과 졸업</span>
                        <span>정보처리기사. 정보보안기사.</span>
                        <span>10</span>
                        <span>100</span>
                    </div>
                    <div class="subnavigation_list_detail" name="9">
                        
                        <span>itking</span>
                        <span>it제왕</span>
                        <span>2022-10-23</span>
                        <span>직장인 20년차</span>
                        <span>한국대학교 컴퓨터과 졸업</span>
                        <span>정보처리기사. 정보보안기사.</span>
                        <span>10</span>
                        <span>100</span>
                    </div>
                    
                    -->
                </div>
            
                

            </div>
            
           
           
       					<%-- <table style="font-size:1.3rem">
						<tr align="center" valign="middle">
							<td class="web-view">
								<c:if test="${prev}">
									<a href="${pageContext.request.contextPath}/board/boardListOk.bo?page=${startPage - 1}">&lt;</a>
								</c:if>
								<c:forEach var="i" begin="${startPage}" end="${endPage}">
									<c:choose>
										<c:when test="${not (i eq page)}">
											<a href="${pageContext.request.contextPath}/board/boardListOk.bo?page=${i}">
												<c:out value="${i}"/>&nbsp;&nbsp;
											</a>
										</c:when>
										<c:otherwise>
												<c:out value="${i}"/>&nbsp;&nbsp;
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:if test="${next}">
									<a href="${pageContext.request.contextPath}/board/boardListOk.bo?page=${endPage + 1}">&gt;</a>
								</c:if>
							</td>
						</tr>
						</table> --%>
           
            <div id="page_action">
                
            
                <div id="page_arrow">
                    <c:choose>
					<c:when test="${prev}">  
                    
						<a style="width : 100px; color:black;"  href="${pageContext.request.contextPath}/admin/memberList.admin?page=${page - 1}">&lt;</a>
	                     <%-- <span class="prev_a" onclick="location.href = '${pageContext.request.contextPath}/admin/memberList.admin?page=${page - 1}'">
	                    	&lt;
						</span>  --%>
					
                    </c:when>
                  <c:otherwise>
                  	<a style="width : 100px; color:black;" href="javascript::void(0)"></a>
                   </c:otherwise>
                   </c:choose>
                    <a style="width : 100px; color:black;" href="${pageContext.request.contextPath}/admin/memberList.admin?page=${page}">${page}</a> 
                  
                   
                    <c:choose>
                  <c:when test="${next}">
	                
						<a style="width : 100px; color:black;" href="${pageContext.request.contextPath}/admin/memberList.admin?page=${page + 1}">&gt;</a>
	                     <%-- <span class="next_a" onclick="location.href = '${pageContext.request.contextPath}/admin/memberList.admin?page=${page + 1}'">
							&gt;
	                    </span>  --%>
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
<!-- <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script> -->
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
   $(".subnavigation_list_detail").click(function(){
	   let selectMemberNumber = $(this).attr("name");
	   req.setAttribute("name",selectMemberNumber);
	   console.log(req.setAttribute("name",selectMemberNumber));
   })
});
	/* show();

	function show(order){
		let type = $("#type").val() || 'none';
		let keyword = $("#keyword").val() || 'none';
		order = order || 'none';
		
		let text = "";
		
		$.ajax({
			url: "${pageContext.request.contextPath}/admin/memberList.admin",
			type: "get",
			data: {type: type, keyword: keyword, order: order},
			dataType: "json", 
			success:function(result){
				$(results).each(function(i, result){
					text += `<li>` + result.memberNumber + `&nbsp;&nbsp;`;
					text += result.memberEmail + `&nbsp;&nbsp;`;
					text += result.memberNickname + `&nbsp;&nbsp;`;
					text += result.memberName + `</li>`;
				})
				
				if(results.length == 0){
					text = "검색 결과가 없습니다";
				}
				$("#result").html(text);
			}
		});
		
	} */

</script>

</html>