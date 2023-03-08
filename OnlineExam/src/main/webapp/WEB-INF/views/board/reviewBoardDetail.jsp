<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="review_DetailBox">
   <div class="reviewdetail_header">
      <h2>수강후기</h2>
   </div>
   <div class="reviewDetail_wrap">
      <div class="reviewDetailInfoBox">
         <div class="reviewDetail_TitleBox">
            <h3 class="detail_title">${board.title}</h3>
         </div>
         <div class="reviewDetail_Info">
            <div>작성자: ${board.username.name} |&nbsp;</div>
            <div>
               작성일:
               <fmt:formatDate pattern="yyyy-MM-dd HH:mm"
                  value="${board.createTime}" />
               &nbsp;|&nbsp;
            </div>
            <div>조회수: ${board.count}</div>
         </div>
      </div>
      <div class="reviewDetail_contentBox">
         <div class="commD_contentSmall">
            <div class="commD_teacherSmall">
               <div class="teacherInfoBox">
                  <div>
                     <div>
                        <c:choose>
                           <c:when test="${board.setTeacher == '풀스택 강사'}">
                              <td><img src="${teacherPic1.content}" alt=""
                                 class="teacherImgBox"></td>
                           </c:when>
                           <c:when test="${board.setTeacher == 'JS 강사'}">
                              <td><img src="${teacherPic2.content}" alt=""
                                 class="teacherImgBox"></td>
                           </c:when>
                           <c:when test="${board.setTeacher == '자바 강사'}">
                              <td><img src="${teacherPic3.content}" alt=""
                                 class="teacherImgBox"></td>
                           </c:when>
                           <c:when test="${board.setTeacher == '파이썬 강사'}">
                              <td><img src="${teacherPic4.content}" alt=""
                                 class="teacherImgBox"></td>
                           </c:when>
                           <c:when test="${board.setTeacher == '백엔드 강사'}">
                              <td><img src="${teacherPic5.content}" alt=""
                                 class="teacherImgBox"></td>
                           </c:when>
                        </c:choose>
                     </div>
                     <div>
                        <div class="commuTeacherName">${board.setTeacher}</div>
                     </div>

                  </div>
                  <div class="star_rate">
                     <c:forEach var="board" items="${setStar}" varStatus="status"
                        begin="1" end="${board.setStar}">
                        <span class="reStar">★</span>
                     </c:forEach>
                  </div>
               </div>
               <div>
                  <div class="teacherInfoContent">
                     <span class="teacherInfoDetail">${rboardItem.content}&nbsp;</span><span></span>
                  </div>
               </div>
               <div>
                  <div class="teacherInfoContent">
                     <span class="teacherInfoDetail">키워드&nbsp;</span>
                  </div>

               </div>
               <div>
                  <div class="teacherInfoContent">#빠른답변속도 #자세한답변 #친절한응대</div>
               </div>
            </div>
         </div>
      </div>
      <div class="commuD_contentBigBox">${board.content}
         <br>
         <c:choose>
            <c:when test="${board.boardImg == null}">
               <div class="border border-2 img-fluid" style="display: none;">
                  <img src="/image/${board.boardImg}" alt="프로필 사진"
                     style="width: 100%; height: 100%; object-fit: cover;">
               </div>
            </c:when>
            <c:otherwise>
               <br>
               <div class="border border-2 img-fluid"
                  style="width: 300px; height: 300px; overflow: hidden; background-color: white;">
                  <c:set var="b_img" value="${board.boardImg}"></c:set>
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
   <!-- 수정,삭제,목록 버튼 -->
   <c:if test="${board.username.id==principal.user.id}">
      <div class="reviewD_btnBox">
         <div class="review_listBtn">
            <i class="fa-regular fa-rectangle-list"
               onclick="location.href='/board/reviewBoardList'"></i>
         </div>
         <div class="reviewD_modifyBtn">
            <button class="reviewD_modifyBtn2"
               onclick="location.href='/board/${board.id}/reviewBoardUpdateForm'">
               <i class="fa-solid fa-pen-to-square"></i>
            </button>
         </div>
         <div class="reviewD_deleteBtn">
            <button class="reviewD_deleteBtn2" id="rboardDeleteBtn"
               type="button" value="${board.id}">
               <i class="fa-solid fa-trash-can"></i>
            </button>
         </div>
      </div>
   </c:if>
   <!--댓글 입력 폼-->
   <div class="replyBigBox">
      <input type="hidden" id="boardId" value="${board.id}" />
      <div class="replyListTitle">COMMENT</div>

      <div class="replyBigBox2">
         <div class="replySmall1">
            <textarea class="replyWriteBox" placeholder="댓글을 남겨보세요."
               class="textarea" id="rely-content"></textarea>
         </div>
         <div class="replySmall2">
            <button class="reply_btn" id="btn-reply-save">등록</button>
         </div>

      </div>
      <!-- 댓글 반복 출력 -->
      <div class="replyListBox">
         <div class="replyListSmallBox">
            <c:forEach var="reply" items="${board.reply}">
               <div class="replyListSmallBox2" id="reply_${reply.id}">
                  <div class="replyNameDateBtnBox">
                     <div class="replyNameDateBox">
                        <div class="replyName">${board.username.name}</div>
                        <div>
                           <fmt:formatDate pattern="yyyy-MM-dd HH:mm"
                              value="${reply.createTime}" />
                        </div>
                     </div>
                  </div>
                  <div class="replyContentBox">
                     <div class="replyContent">${reply.content}</div>
                  </div>


                  <input type="hidden" id="replyId" value="${reply.id}">
                  <button class="boardDetail_modifyButton" id="btn-reply-update">수정</button>
                  <button class="boardDetail_cancle" id="btn-reply-cancle"
                     style="display: none;">취소</button>
                  <button onclick="oerReply.replyDelete(${board.id},${reply.id})"
                     id="btn-reply-delete">삭제</button>
                  <div class="r_reply_edit" style="display: none;">
                     <input type="hidden" value="${reply.id}"> <input
                        type="text" placeholder="수정" id="reply_edit">
                     <button type="button" id="r_reply"
                        class="btn btn-outline-primary bi bi-pencil-square">수정</button>
                  </div>

               </div>
               <hr>
            </c:forEach>
         </div>
      </div>
   </div>
   <div class="MovePostsBigBox">
      <table class="MovePostsBox">
         <tr>
            <th class="beforePostBtn beforePostBtn3" id="MovePostBtn2">이전글</th>
            <c:choose>
               <c:when test="${board_pre == '이전글이 없습니다.'}">
                  <td class="nextPost beforePostBtn3">${board_pre}</td>
               </c:when>
               <c:otherwise>
                  <td class="nextPost beforePostBtn3"><a
                     href="/board/${board.id-1}">${board_pre.title }</a></td>
               </c:otherwise>
            </c:choose>
         </tr>
         <tr>
            <th class="nextPostBtn nextPost3" id="MovePostBtn2">다음글</th>
            <c:choose>
               <c:when test="${board_nxt == '다음글이 없습니다.'}">
                  <td class="nextPost">${board_nxt}</td>
               </c:when>
               <c:otherwise>
                  <td class="nextPost"><a href="/board/${board.id+1}">${board_nxt.title }</a></td>
               </c:otherwise>
            </c:choose>
         </tr>
      </table>


   </div>
</div>

<%@ include file="../layout/footer.jsp"%>