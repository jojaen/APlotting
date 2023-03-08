<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="answerBigBox">
	<h2>질문게시판</h2>
	<input type="hidden" value="${answer}" id="questionId">
	<div class="answerBox">
		<div class ="answerName">
			<input type="text" value="${principal.user.name}" readonly>
		</div>
		<div class ="answerContent">
			<textarea rows="24" id="answerContent"></textarea>
		</div>
		<div class="answerSaveBtn">
			<input type="button" value="등록하기" id="answer_save_btn">
		</div>
	</div>
</div>
<%@ include file="../layout/footer.jsp"%>