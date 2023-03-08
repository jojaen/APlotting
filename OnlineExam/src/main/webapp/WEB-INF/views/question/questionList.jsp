<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../layout/header.jsp"%>
<div class="faq_container">
	<h2>질문게시판</h2>
	<div class="faq_cate">
		<ul class="cate_ul">
			<li class="cate_form"><input type="radio" id="faq_0"
				name="faqSelect" value="전체" checked> <label for="faq_0"
				class="cate_label">전체</label></li>
			<li class="cate_form"><input type="radio" id="faq_1"
				name="faqSelect" value="풀스택"> <label for="faq_1"
				class="cate_label">풀스택</label></li>
			<li class="cate_form"><input type="radio" id="faq_2"
				name="faqSelect" value="JS"> <label for="faq_2"
				class="cate_label">JS</label></li>
			<li class="cate_form"><input type="radio" id="faq_3"
				name="faqSelect" value="자바"> <label for="faq_3"
				class="cate_label">자바</label></li>
			<li class="cate_form"><input type="radio" id="faq_4"
				name="faqSelect" value="파이썬"> <label for="faq_4"
				class="cate_label">파이썬</label></li>
			<li class="cate_form"><input type="radio" id="faq_5"
				name="faqSelect" value="백엔드"> <label for="faq_5"
				class="cate_label">백엔드</label></li>
			<li class="cate_form"></li>
			<li class="cate_form questionBtnBox"><a href="/questionSave"
				class="questionBtn">질문하기</a></li>
		</ul>
	</div>
	<div class="faq_cont">
		<c:forEach var="question" items="${question.content}">
			<c:choose>
				<c:when test="${empty answer}">
					<c:if test="${question.subject eq 'a'}">
						<div class="faq_1">
							<div class="Accordion_wrap">
								<div class="Awrap">
									<div class="que_1">
										<span class="que_round">풀스택</span>
										<div class="que_title">
											<i class="fa-solid fa-q">&nbsp;</i>${question.content}
										</div>
										<div class="arrow-wrap">
											<span class="arrow-top">↑</span> <span class="arrow-bottom">↓</span>
										</div>
									</div>
									<div class="que_2" style="display: none">
										<c:if test="${question.teacher ne principal.user.name}">
											<div class="answerBtnBox">질문 확인 중입니다!</div>
										</c:if>
										<c:if test="${question.teacher eq principal.user.name}">
											<div class="answerBtnBox">
												<a href="/answerSaveForm/${question.questionId}">답변하기</a>
											</div>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${question.subject eq 'b'}">
						<div class="faq_2">
							<div class="Accordion_wrap">
								<div class="Awrap">
									<div class="que_1">
										<span class="que_round">JS</span>
										<div class="que_title">
											<i class="fa-solid fa-q">&nbsp;</i>${question.content}
										</div>
										<div class="arrow-wrap">
											<span class="arrow-top">↑</span> <span class="arrow-bottom">↓</span>
										</div>
									</div>
									<div class="que_2" style="display: none">
										<c:if test="${question.teacher ne principal.user.name}">
											<div class="answerBtnBox">질문 확인 중입니다!</div>
										</c:if>
										<c:if test="${question.teacher eq principal.user.name}">
											<div class="answerBtnBox">
												<a href="/answerSaveForm/${question.questionId}">답변하기</a>
											</div>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${question.subject eq 'c'}">
						<div class="faq_3">
							<div class="Accordion_wrap">
								<div class="Awrap">
									<div class="que_1">
										<span class="que_round">자바</span>
										<div class="que_title">
											<i class="fa-solid fa-q">&nbsp;</i>${question.content}
										</div>
										<div class="arrow-wrap">
											<span class="arrow-top">↑</span> <span class="arrow-bottom">↓</span>
										</div>
									</div>
									<div class="que_2" style="display: none">
										<c:if test="${question.teacher ne principal.user.name}">
											<div class="answerBtnBox">질문 확인 중입니다!</div>
										</c:if>
										<c:if test="${question.teacher eq principal.user.name}">
											<div class="answerBtnBox">
												<a href="/answerSaveForm/${question.questionId}">답변하기</a>
											</div>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${question.subject eq 'd'}">
						<div class="faq_4">
							<div class="Accordion_wrap">
								<div class="Awrap">
									<div class="que_1">
										<span class="que_round">파이썬</span>
										<div class="que_title">
											<i class="fa-solid fa-q">&nbsp;</i>${question.content}
										</div>
										<div class="arrow-wrap">
											<span class="arrow-top">↑</span> <span class="arrow-bottom">↓</span>
										</div>
									</div>
									<div class="que_2" style="display: none">
										<c:if test="${question.teacher ne principal.user.name}">
											<div class="answerBtnBox">질문 확인 중입니다!</div>
										</c:if>
										<c:if test="${question.teacher eq principal.user.name}">
											<div class="answerBtnBox">
												<a href="/answerSaveForm/${question.questionId}">답변하기</a>
											</div>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${question.subject eq 'e'}">
						<div class="faq_5">
							<div class="Accordion_wrap">
								<div class="Awrap">
									<div class="que_1">
										<span class="que_round">백엔드</span>
										<div class="que_title">
											<i class="fa-solid fa-q">&nbsp;</i>${question.content}
										</div>
										<div class="arrow-wrap">
											<span class="arrow-top">↑</span> <span class="arrow-bottom">↓</span>
										</div>
									</div>
									<div class="que_2" style="display: none">
										<c:if test="${question.teacher ne principal.user.name}">
											<div class="answerBtnBox">질문 확인 중입니다!</div>
										</c:if>
										<c:if test="${question.teacher eq principal.user.name}">
											<div class="answerBtnBox">
												<a href="/answerSaveForm/${question.questionId}">답변하기</a>
											</div>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</c:if>
				</c:when>

				<c:otherwise>
					<c:forEach var="ans" items="${answer}">
						<c:if test="${question.subject eq 'a'}">
							<div class="faq_1">
								<div class="Accordion_wrap">
									<div class="Awrap">
										<div class="que_1">
											<span class="que_round">풀스택</span>
											<div class="que_title">
												<i class="fa-solid fa-q">&nbsp;</i>${question.content}
											</div>
											<div class="arrow-wrap">
												<span class="arrow-top">↑</span> <span class="arrow-bottom">↓</span>
											</div>
										</div>
										<div class="que_2" style="display: none">
											<c:choose>
												<c:when
													test="${ans.questionId.questionId ne question.questionId}">
													<c:if test="${question.teacher ne principal.user.name}">
														<div class="answerBtnBox">질문 확인 중입니다!</div>
													</c:if>
													<c:if test="${question.teacher eq principal.user.name}">
														<div class="answerBtnBox">
															<a href="/answerSaveForm/${question.questionId}">답변하기</a>
														</div>
													</c:if>
												</c:when>
												<c:otherwise>
													<div>
														<div class="answerInfoBox">
															<span class="answerAcolor">A.</span><span
																class="teacherNameSize">${ans.username.name}</span>
														</div>
														<div class="answerContentBox">
															<p>${ans.content}</p>
														</div>
													</div>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${question.subject eq 'b'}">
							<div class="faq_2">
								<div class="Accordion_wrap">
									<div class="Awrap">
										<div class="que_1">
											<span class="que_round">JS</span>
											<div class="que_title">
												<i class="fa-solid fa-q">&nbsp;</i>${question.content}
											</div>
											<div class="arrow-wrap">
												<span class="arrow-top">↑</span> <span class="arrow-bottom">↓</span>
											</div>
										</div>
										<div class="que_2" style="display: none">
											<c:choose>
												<c:when
													test="${ans.questionId.questionId ne question.questionId}">
													<c:if test="${question.teacher ne principal.user.name}">
														<div class="answerBtnBox">질문 확인 중입니다!</div>
													</c:if>
													<c:if test="${question.teacher eq principal.user.name}">
														<div class="answerBtnBox">
															<a href="/answerSaveForm/${question.questionId}">답변하기</a>
														</div>
													</c:if>
												</c:when>
												<c:otherwise>
													<div>
														<span>${ans.username.name}</span>
														<p>${ans.content}</p>
													</div>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${question.subject eq 'c'}">
							<div class="faq_3">
								<div class="Accordion_wrap">
									<div class="Awrap">
										<div class="que_1">
											<span class="que_round">자바</span>
											<div class="que_title">
												<i class="fa-solid fa-q">&nbsp;</i>${question.content}
											</div>
											<div class="arrow-wrap">
												<span class="arrow-top">↑</span> <span class="arrow-bottom">↓</span>
											</div>
										</div>
										<div class="que_2" style="display: none">
											<c:choose>
												<c:when
													test="${ans.questionId.questionId ne question.questionId}">
													<c:if test="${question.teacher ne principal.user.name}">
														<div class="answerBtnBox">질문 확인 중입니다!</div>
													</c:if>
													<c:if test="${question.teacher eq principal.user.name}">
														<div class="answerBtnBox">
															<a href="/answerSaveForm/${question.questionId}">답변하기</a>
														</div>
													</c:if>
												</c:when>
												<c:otherwise>
													<div>
														<span>${ans.username.name}</span>
														<p>${ans.content}</p>
													</div>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${question.subject eq 'd'}">
							<div class="faq_4">
								<div class="Accordion_wrap">
									<div class="Awrap">
										<div class="que_1">
											<span class="que_round">파이썬</span>
											<div class="que_title">
												<i class="fa-solid fa-q">&nbsp;</i>${question.content}
											</div>
											<div class="arrow-wrap">
												<span class="arrow-top">↑</span> <span class="arrow-bottom">↓</span>
											</div>
										</div>
										<div class="que_2" style="display: none">
											<c:choose>
												<c:when
													test="${ans.questionId.questionId ne question.questionId}">
													<c:if test="${question.teacher ne principal.user.name}">
														<div class="answerBtnBox">질문 확인 중입니다!</div>
													</c:if>
													<c:if test="${question.teacher eq principal.user.name}">
														<div class="answerBtnBox">
															<a href="/answerSaveForm/${question.questionId}">답변하기</a>
														</div>
													</c:if>
												</c:when>
												<c:otherwise>
													<div>
														<span>${ans.username.name}</span>
														<p>${ans.content}</p>
													</div>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${question.subject eq 'e'}">
							<div class="faq_5">
								<div class="Accordion_wrap">
									<div class="Awrap">
										<div class="que_1">
											<span class="que_round">백엔드</span>
											<div class="que_title">
												<i class="fa-solid fa-q">&nbsp;</i>${question.content}
											</div>
											<div class="arrow-wrap">
												<span class="arrow-top">↑</span> <span class="arrow-bottom">↓</span>
											</div>
										</div>
										<div class="que_2" style="display: none">
											<c:choose>
												<c:when
													test="${ans.questionId.questionId ne question.questionId}">
													<c:if test="${question.teacher ne principal.user.name}">
														<div class="answerBtnBox">질문 확인 중입니다!</div>
													</c:if>
													<c:if test="${question.teacher eq principal.user.name}">
														<div class="answerBtnBox">
															<a href="/answerSaveForm/${question.questionId}">답변하기</a>
														</div>
													</c:if>
												</c:when>
												<c:otherwise>
													<div>
														<span>${ans.username.name}</span>
														<p>${ans.content}</p>
													</div>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</div>


</div>
<%@ include file="../layout/footer.jsp"%>