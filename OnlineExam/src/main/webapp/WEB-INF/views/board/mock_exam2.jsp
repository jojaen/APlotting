<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="/css/exam.css">
<script src="https://kit.fontawesome.com/983b1b1bfd.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<div id="container_exam">
	<form action="" method="get">

		<c:forEach var="status" items="${status}">
			<div id="status_${status}" class="exam_wrap">
				<div id="exam_head">
					<h1>
						<i class="fa-solid fa-grip-lines"></i>&nbsp;모의고사 2회&nbsp;<i
							class="fa-solid fa-grip-lines"></i>
					</h1>
				</div>
				<div id="exam_head2">
					<p>정보처리기사</p>
					<img alt="exam_icon" src="/image/exam_icon.png" id="exam_icon">
				</div>

				<c:choose>
					<c:when test="${status % 2 == 0}">
						<c:forEach var="exam1" items="${exam1.content}">
							<c:choose>
								<c:when test="${status == exam1.id}">
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

														<input type="radio" name="mock2_${exam1.id}" value="1">
														1) <img src="${exam1.num1}">

													</div>
													<div>
														<input type="radio" name="mock2_${exam1.id}" value="2">
														2) <img src="${exam1.num2}">
													</div>
													<div>
														<input type="radio" name="mock2_${exam1.id}" value="3">
														3) <img src="${exam1.num3}">
													</div>
													<div>
														<input type="radio" name="mock2_${exam1.id}" value="4">
														4) <img src="${exam1.num4}">
													</div>

												</c:when>
												<c:otherwise>
													<div style="padding-top: 10px;">
														<input type="radio" name="mock2_${exam1.id}" value="1">
														1) ${exam1.num1 }
													</div>
													<div>
														<input type="radio" name="mock2_${exam1.id}" value="2">
														2) ${exam1.num2 }
													</div>
													<div>
														<input type="radio" name="mock2_${exam1.id}" value="3">
														3) ${exam1.num3 }
													</div>
													<div>
														<input type="radio" name="mock2_${exam1.id}" value="4">
														4) ${exam1.num4 }
													</div>

												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</c:when>
							</c:choose>
						</c:forEach>
						<div id="exam_btn">
							<a href="#status_${status-1}">이전문제</a> <a
								href="#status_${status+1}">다음문제</a>
						</div>
						<!-- 답안지 및 시험 제출 버튼 -->
						<div id="exam_btn2">
							<input type="button" id="exam_submit" onclick="getanswer();"
								value="시험종료">
						</div>
					</c:when>
					<c:when test="${status % 2 != 0}">
						<c:forEach var="exam2" items="${exam2.content}">
							<c:choose>
								<c:when test="${status == exam2.id}">
									<div class="exam_box">
										<div id="exam_question">${exam2.id}.&nbsp;${exam2.question}</div>
										<div id="exam_question_box">
											<div>
												<img src="${exam2.question_content }">
											</div>
											<div style="padding-top: 10px;">
												<input type="radio" name="mock2_${exam2.id}" value="1">
												1) ${exam2.num1 }
											</div>
											<div>
												<input type="radio" name="mock2_${exam2.id}" value="2">
												2) ${exam2.num2 }
											</div>
											<div>
												<input type="radio" name="mock2_${exam2.id}" value="3">
												3) ${exam2.num3 }
											</div>
											<div>
												<input type="radio" name="mock2_${exam2.id}" value="4">
												4) ${exam2.num4 }
											</div>
										</div>
									</div>
									<div id="exam_btn">
										<a href="#status_${status-1}">이전문제</a> <a
											href="#status_${status+1}">다음문제</a>
									</div>
									<!-- 답안지 및 시험 제출 버튼 -->
									<div id="exam_btn2">
										<input type="button" id="exam_submit" onclick="getanswer();"
											value="시험종료">
									</div>
								</c:when>
							</c:choose>
						</c:forEach>
					</c:when>
				</c:choose>

			</div>
		</c:forEach>
	</form>
</div>
<script type="text/javascript" src="/js/mock2.js"></script>