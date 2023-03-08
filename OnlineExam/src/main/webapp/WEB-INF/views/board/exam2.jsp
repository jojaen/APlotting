<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/css/exam.css">
<script src="https://kit.fontawesome.com/983b1b1bfd.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<div id="container_exam">
	<!-- 문제 보여지는 부분 -->
	<c:forEach var="exam2" items="${exam2.content}">
		<div id="exam_wrap_${exam2.id}" class="exam_wrap">
			<div id="exam_head">
				<h1>
					<i class="fa-solid fa-grip-lines"></i>&nbsp;기출문제 2회&nbsp;<i
						class="fa-solid fa-grip-lines"></i>
				</h1>
			</div>
			<div id="exam_head2">
				<p>정보처리기사</p>
				<img alt="exam_icon" src="/image/exam_icon.png" id="exam_icon">
			</div>

			<div class="exam_question_box" id="exam2_${exam2.id}">
				<div class="exam_box">
					<div id="exam_question">${exam2.id}.&nbsp;${exam2.question}</div>
					<div id="exam_question_box">
						<div>
							<img src="${exam2.question_content }">
						</div>
						<div style="padding-top: 10px;">
							<input type="radio" name="exam2_${exam2.id}" value="1">
							1) ${exam2.num1 }
						</div>
						<div>
							<input type="radio" name="exam2_${exam2.id}" value="2">
							2) ${exam2.num2 }
						</div>
						<div>
							<input type="radio" name="exam2_${exam2.id}" value="3">
							3) ${exam2.num3 }
						</div>
						<div>
							<input type="radio" name="exam2_${exam2.id}" value="4">
							4) ${exam2.num4 }
						</div>
					</div>
				</div>
			</div>
			<div id="exam_btn">
				<a href="#exam_wrap_${exam2.id-1}">이전문제</a> <a
					href="#exam_wrap_${exam2.id+1}">다음문제</a>
			</div>
			<!-- 답안지 및 시험 제출 버튼 -->
			<div id="exam_btn2">
				<input type="button" id="exam_submit" onclick="getanswer();"
					value="시험종료">
			</div>
		</div>

	</c:forEach>
</div>
<script type="text/javascript" src="/js/exam2.js"></script>