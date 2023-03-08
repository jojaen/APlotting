<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="/css/exampage.css">

<h1 class="exam_select_header">정보처리기사 테스트</h1>
<div class="exam_select_total">

	<div class="exam_select_wrap">

		<p class="past_exam_header">
			<span class="header_space">기출문제</span>
		</p>
		<br>
		<div class="past_exam">
			<div class="past_exam_div1" onclick="location.href='/exam1'">
				<div class="past_exam_hover">기출문제 1회</div>
			</div>
			<div class="past_exam_div2" onclick="location.href='/exam2'">
				<div class="past_exam_hover">기출문제 2회</div>
			</div>
		</div>


		<p class="mock_exam_header">
			<span class="header_space">모의고사</span>
		</p>
		<div class="mock_exam">
			<div class="mock_exam_div1" onclick="location.href='/mock1'">
				<div class="mock_exam_hover">모의고사 1회</div>
			</div>
			<div class="mock_exam_div2" onclick="location.href='/mock2'">
				<div class="mock_exam_hover">모의고사 2회</div>
			</div>
		</div>
	</div>

</div>

<%@ include file="../layout/footer.jsp"%>