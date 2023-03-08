<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/css/exam.css">
<script src="https://kit.fontawesome.com/983b1b1bfd.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<div id="container_exam">
	<form action="" method="get">
		<!-- 문제 보여지는 부분 -->
		<c:forEach var="exam1" items="${exam1.content}">
			<div id="exam_wrap_${exam1.id}" class="exam_wrap">
				<div id="exam_head">
					<h1>
						<i class="fa-solid fa-grip-lines"></i>&nbsp;기출문제 1회&nbsp;<i
							class="fa-solid fa-grip-lines"></i>
					</h1>
				</div>
				<div id="exam_head2">
					<p>정보처리기사</p>
					<img alt="exam_icon" src="/image/exam_icon.png" id="exam_icon">
				</div>

				<div class="exam_question_box" id="exam1_${exam1.id}">
					<div class="exam_box">
						<div id="exam_question">${exam1.id}.&nbsp;${exam1.question}</div>
						<div id="exam_question_box">
							<div>
								<img src="${exam1.question_content }">
							</div>
							<c:choose>
								<c:when
									test="${exam1.id == 44 || exam1.id == 57 || exam1.id == 77 || exam1.id == 79}">
									<div style="padding-top: 10px;">

										<input type="radio" name="exam1_${exam1.id}" value="1">
										1) <img src="${exam1.num1}">

									</div>
									<div>
										<input type="radio" name="exam1_${exam1.id}" value="2">
										2) <img src="${exam1.num2}">
									</div>
									<div>
										<input type="radio" name="exam1_${exam1.id}" value="3">
										3) <img src="${exam1.num3}">
									</div>
									<div>
										<input type="radio" name="exam1_${exam1.id}" value="4">
										4) <img src="${exam1.num4}">
									</div>
								</c:when>
								<c:otherwise>
									<div style="padding-top: 10px;">
										<input type="radio" name="exam1_${exam1.id}" value="1">
										1) ${exam1.num1 }
									</div>
									<div>
										<input type="radio" name="exam1_${exam1.id}" value="2">
										2) ${exam1.num2 }
									</div>
									<div>
										<input type="radio" name="exam1_${exam1.id}" value="3">
										3) ${exam1.num3 }
									</div>
									<div>
										<input type="radio" name="exam1_${exam1.id}" value="4">
										4) ${exam1.num4 }
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<div id="exam_btn">
					<a href="#exam_wrap_${exam1.id-1}">이전문제</a> <a
						href="#exam_wrap_${exam1.id+1}">다음문제</a>
				</div>
				<!-- 답안지 및 시험 제출 버튼 -->
				<div id="exam_btn2">
					<input type="button" id="exam_submit" onclick="getanswer();"
						value="시험종료">
				</div>
			</div>
		</c:forEach>
	</form>
</div>
<script type="text/javascript" src="/js/exam1.js"></script>