<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@ include file="../layout/header.jsp"%>

<div class="notice_DetailBox">
	<div class="noticedetail_header">
		<h2>공지사항</h2>
	</div>
	
	<div class="noticeDetail_wrap">
	<div class="noticeDetailInfoBox">
		<div class="noticeDetail_TitleBox">
			<h3 class="detail_title">${nboard.title}</h3>
		</div>
		<div class="noticeDetail_Info">
			<div>작성자: ${nboard.username.name} |&nbsp;</div>
			<div>작성일: <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${nboard.createTime}"/>&nbsp;|&nbsp;</div>
			<div>조회수: ${nboard.count}</div>
		</div>
	</div>
	
	
	<div class="noticeDetail_contentBox">
		<div class="noticeDetail_contentBigBox">
			<div class="noticeContentBox">${nboard.content}</div>
			<div>
		<c:choose>
			<c:when test="${nboard.boardImg == null}">
				<div class="border border-2 img-fluid" style="display: none;">
					<img src="/image/${nboard.boardImg}" alt="사진"
						style="width: 100%; height: 100%; object-fit: cover;">
				</div>
			</c:when>
			<c:otherwise>
				<div class="border border-2 img-fluid"
					style="width: 300px; height: 300px; overflow: hidden; background-color: white;">
					<c:set var="b_img" value="${nboard.boardImg}"></c:set>		
					<%
					String img = (String) pageContext.getAttribute("b_img");
					String[] addStr = img.split("/");
					for (String str : addStr) {
						out.print("<img src='/upload/" + str + "'>");
					}
					%>	
				</div>
				
			</c:otherwise>
		</c:choose>
			</div>
		</div>
	</div>
	</div>
	 <c:if test="${nboard.username.id==principal.user.id}">
    <div class="noticeD_btnBox">
    <div class="notice_listBtn"><i class="fa-regular fa-rectangle-list"  onclick="location.href='/nboard/noticeBoardList'"></i></div>
    	<div class="noticeD_modifyBtn">
    	 <button class="noticeD_modifyBtn2" onclick="location.href='/nboard/${nboard.id}/noticeBoardUpdateForm'"><i class="fa-solid fa-pen-to-square"></i></button>
    	</div>
    	<div class="noticeD_deleteBtn">
    		<button class="noticeD_deleteBtn2" id="nboardDeleteBtn" type="button" value="${nboard.id}"><i class="fa-solid fa-trash-can"></i></button>
    	</div>
    </div>
    </c:if>
    
    <div>
    	<table class="noticeDetailMovePostsBox">
			<tr>
				<th class="noticeDetailbeforePostBtn noticeDetailbeforePostBtn3" id="noticeDetail_MovePostBtn2">이전글</th>
				<td class="nextPost beforePostBtn3"><a href="#">[공지]1/13(금)00시~06시
						이투스 사이트 점검 작업</a></td>
			</tr>
			<tr>
				<th class="noticeDetailnextPostBtn noticeDnextPost3" id="noticeDetail_MovePostBtn2">다음글</th>
				<td class="noticeDetailnextPost"><a href="#">[공지]1/15(금)22시~06시 작업</a></td>
			</tr>
		</table>
    </div>
</div>


<%@ include file="../layout/footer.jsp"%>