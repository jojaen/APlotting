<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="/css/vocalist.css">


<div class="vocalist_wrap">
	<div class="vocalist_header">
		<h1>단어장</h1>
	</div>

	<div class="vocalist_total">
		<c:forEach var="vocalist" items="${vocalist.content}">
			<div class="vocalist_head">뜻/단어</div>

			<div class="vocalist_content">
				<div class="vocalist_mean">${vocalist.mean}</div>
				<br>
				<div class="vocalist_word">${vocalist.word}</div>
				<br>
			</div>
		</c:forEach>
	</div>

	<!-- 다음버튼, 이전버튼 -->
	<div id="vocalist_btn">
		<div>
			<c:choose>
				<c:when test="${vocalist.first}">
					<a style="display: none;" class="pre_btn"
						href="?page=${vocalist.number-1}">Previous</a>
				</c:when>
				<c:otherwise>
					<a class="pre_btn" href="?page=${vocalist.number-1}">Previous</a>
				</c:otherwise>
			</c:choose>
		</div>
		<div>
			<c:choose>
				<c:when test="${vocalist.last}">
					<a style="display: none;" class="nxt_btn"
						href="?page=${vocalist.number}">Next</a>
				</c:when>
				<c:otherwise>
					<a class="nxt_btn" href="?page=${vocalist.number+1}">Next</a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>



</div>

<script type="text/javascript" src="/js/vocalist.js"></script>
<%@ include file="../layout/footer.jsp"%>