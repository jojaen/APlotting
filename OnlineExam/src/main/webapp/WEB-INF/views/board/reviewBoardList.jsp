<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../layout/header.jsp"%>

<div class="Comm_Box">
   <h2>수강후기</h2>
   <div class="reviewInfoBox">
      <div class="reviewInfoWrite">
         <ul>
            <li class="reviewInfoTitle1">수강 중인 강좌의 수강후기를 작성해주세요!</li>
            <li class="reviewInfo">- 수강후기 작성시 500포인트 지급</li>
            <li class="reviewInfo">- 베스트 수강후기에 당첨될 시 작당모의 한달 <br>&nbsp;&nbsp;무료
               이용권 및 5000포인트 지급
            </li>
            <li class="reviewInfo">- 욕설,비방,반복적인 문자 입력 시 미승인</li>
         </ul>
      </div>
      <div class="reviewBtnBox">
         <a href="/board/reviewBoardSaveForm" class="reviewBtn">수강후기 작성하기</a>
      </div>
   </div>

   <!-- 수강 후기 슬라이더 -->
   <h4>BEST 수강후기!</h4>
   <div class="reviewSlide">
      <div class="reviewSlide_item item1">
         <div class="rbox">
            <div class="reviewTextBox1">
               <div class="reviewTextBox">
                  <span>"</span> <a href=""> 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰
                     베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 </a> <span>"</span>
               </div>
               <div class="bestreviewBox">★★★★★</div>
               <div>
                  <p class="reviewFont">아무개 수강생 /평균92점 (저쩌구 강사님 수업 후기)</p>
               </div>
            </div>
         </div>
      </div>
      <div class="reviewSlide_item item2">
         <div class="rbox">
            <div class="reviewTextBox1">
               <div class="reviewTextBox">
                  <span>"</span> <a href=""> 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰
                     베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 </a> <span>"</span>
               </div>
               <div class="bestreviewBox">★★★★★</div>
               <div>
                  <p class="reviewFont">아무개 수강생 /평균92점 (저쩌구 강사님 수업 후기)</p>
               </div>
            </div>
         </div>
      </div>
      <div class="reviewSlide_item item3">
         <div class="rbox">
            <div class="reviewTextBox1">
               <div class="reviewTextBox">
                  <span>"</span> <a href=""> 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰
                     베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 </a> <span>"</span>
               </div>
               <div class="bestreviewBox">★★★★★</div>
               <div>
                  <p class="reviewFont">아무개 수강생 /평균92점 (저쩌구 강사님 수업 후기)</p>
               </div>
            </div>
         </div>
      </div>
      <div class="reviewSlide_item item4">
         <div class="rbox">
            <div class="reviewTextBox1">
               <div class="reviewTextBox">
                  <span>"</span> <a href=""> 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰
                     베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 </a> <span>"</span>
               </div>
               <div class="bestreviewBox">★★★★★</div>
               <div>
                  <p class="reviewFont">아무개 수강생 /평균92점 (저쩌구 강사님 수업 후기)</p>
               </div>
            </div>
         </div>
      </div>
      <div class="reviewSlide_item item5">
         <div class="rbox">
            <div class="reviewTextBox1">
               <div class="reviewTextBox">
                  <span>"</span> <a href=""> 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰
                     베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 베스트 리뷰 </a> <span>"</span>
               </div>
               <div class="bestreviewBox">★★★★★</div>
               <div>
                  <p class="reviewFont">아무개 수강생 /평균92점 (저쩌구 강사님 수업 후기)</p>
               </div>
            </div>
         </div>
      </div>
      <div class="slide_prev_button slide_button">&#60;</div>
      <div class="slide_next_button slide_button">&#62;</div>
      <ul class="slide_pagination"></ul>
   </div>

   <!-- 강사명 강좌명 검색 -->
   <div class="reviewSearchBox">
      <div class="teacherSearchBox">
         <select class="teacherSearch">
            <option disabled selected>선생님 선택</option>
            <option>강사1</option>
            <option>강사2</option>
            <option>강사3</option>
         </select>
      </div>
      <div class="subjectSearchBox">
         <div class="subjectSelectBox">
            <select class="subjectSearch">
               <option disabled selected>강좌선택</option>
               <option>강좌1</option>
               <option>강좌2</option>
               <option>강좌3</option>
            </select>
         </div>
         <div class="subjectSearchBtnBox">
            <button class="subjectSearchBtn" type="button">검색</button>
         </div>
      </div>
   </div>

   <!-- 글목록 보기 -->
   <div class="reviewList">
      <div class="totalReview">
         <p>
            총 <span>1000</span>개의 리뷰
         </p>
      </div>
      <div class="reviewInfoTitleBox">
         <table class="reviewInfoTitle">
            <tr>
               <td class="reviewNum">NO</td>
               <td class="teacherName">강사명</td>
               <td class="reTitle">제목</td>
               <td class="reWriterName">작성자</td>
               <td class="reviewDate">등록일</td>
               <td class="reviewCount">조회수</td>
            </tr>
         </table>
      </div>


     
         <c:forEach var="boards" items="${board.content}">
          <table class="reviewInfoDetail">
            <tr class="reviewInfoDetail_tr">
               <td class="reviewNum"><a href="/board/${boards.id}"
                  class="btn btn-primary">${boards.id}</a></td>
               <td class="teacherName">${boards.setTeacher}</td>
               <td class="reTitle"><a href="/board/${boards.id}" class="rboard_title">${boards.title}</a>
               </td>
               <td class="reWriterName">${boards.username.name}</td>
               <td class="reviewDate"><fmt:formatDate value="${boards.createTime}" pattern="yyyy-MM-dd" /></td>
               <td class="reviewCount">${boards.count}</td>
               
            </tr>
                  </table>
         </c:forEach>
         
         
           <div class="col-8 justify-content-center">
      	<ul class="pagination justify-content-center">
			<c:choose>
				<c:when test="${board.first}">
					<li class="page-item disabled"><a class="page-link" href="?page=${board.number-1}" style="display: none;">이전</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="?page=${board.number-1}"><i class="fa-solid fa-angles-left"></i></a></li>
				</c:otherwise>
			</c:choose>
			<c:forEach var="i" begin="${startBlockPage}" end="${endBlockPage}">
				<c:choose>
					<c:when test="${board.pageable.pageNumber+1==i}">
						<li class="page-item"><a class="page-link2" id="pageable_box" href="?page=${i-1}">${i}</a>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link2" href="?page=${i-1}">${i}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${board.last}">
					<li class="page-item disabled"><a class="page-link" href="?page=${board.number+1}" style="display: none;">다음</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="?page=${board.number+1}"><i class="fa-solid fa-angles-right"></i></a></li>
				</c:otherwise>
			</c:choose>
		</ul>
      </div>



   </div>
</div>
<script type="text/javascript" src="/js/slide.js"></script>
<%@ include file="../layout/footer.jsp"%>