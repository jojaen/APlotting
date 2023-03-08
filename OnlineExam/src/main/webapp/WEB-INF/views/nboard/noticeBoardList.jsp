<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
   uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../layout/header.jsp"%>

<div class="Notice_Box">
   <div>
      <h2>공지사항</h2>
   </div>

   <!-- 공지 글쓰기 버튼 -->
   <div class="noticeBtnBox">
      <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_MANAGER')">
         <div>
            <a href="/nboard/noticeBoardSaveForm">글쓰기</a>
         </div>
      </sec:authorize>
   </div>

   <!-- 글목록 보기 -->
   <div class="noticeList">
      <div class="noticeInfoTitleBox">
         <table class="noticeInfoTitle">
            <tr>
               <td class="noticeviewNum">NO</td>
               <td class="noticeTitle">제목</td>
               <td class="noticeWriter">작성자</td>
               <td class="noticeDate">등록일</td>
               <td class="noticeNum">조회수</td>
            </tr>
         </table>
      </div>

      <c:forEach var="boards" items="${nboard.content}">
         <table class="noticeInfoDetail">
            <tr>
               <td class="noticeviewNum"><a href="/nboard/${boards.id}"
                  class="btn btn-primary">${boards.id}</a></td>
               <td class="noticeTitle"><a href="/nboard/${boards.id}" class="nboard_title">${boards.title}</a>
               </td>
               <td class="noticeWriter">${boards.username.name}</td>
               <td class="noticeDate"><fmt:formatDate
                     value="${boards.createTime}" pattern="yyyy-MM-dd" /></td>
               <td class="noticeNum">${boards.count }</td>
            </tr>
         </table>
      </c:forEach>
   </div>
  
   	  <div class="col-8 justify-content-center">
      	<ul class="pagination justify-content-center">
      	
			<c:choose>
		
				<c:when test="${nboard.first}">
					<li class="page-item disabled"><a class="page-link" href="?page=${nboard.number-1}" style="display: none;"><i class="fa-solid fa-angles-left"></i></a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="?page=${nboard.number-1}"><i class="fa-solid fa-angles-left"></i></a></li>
				</c:otherwise>
			</c:choose>
			<c:forEach var="i" begin="${startBlockPage}" end="${endBlockPage}">
				<c:choose>
					<c:when test="${nboard.pageable.pageNumber+1==	i}">
						<li class="page-item"><a class="page-link2" id="pageable_box" href="?page=${i-1}">${i}</a>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link2" href="?page=${i-1}">${i}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${nboard.last}">
					<li class="page-item disabled"><a class="page-link" href="?page=${nboard.number+1}" style="display: none"><i class="fa-solid fa-angles-right"></i></a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item"><a class="page-link" href="?page=${nboard.number+1}"><i class="fa-solid fa-angles-right"></i></a></li>
				</c:otherwise>
			</c:choose>
		</ul>
      </div>

</div>
<%@ include file="../layout/footer.jsp"%>