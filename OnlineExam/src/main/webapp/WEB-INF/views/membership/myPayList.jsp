<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<div class="joinFormBox">
	<div class="joinChoice">

		<div class="joinChoice">
			<div class="SignUpBtn">
				<div class="smallbtnbox2">
					<a href="/payment/myPayList" class="aSign" id="aSign">결제내역</a>
				</div>
			</div>
			<div class="LoginBtn">
				<div class="smallbtnbox2">
					<a href="/auth/userUpdateForm" class="aLogin" id="aLogin">회원정보수정</a>
				</div>
			</div>
		</div>

	</div>
	<div class="JoinBigBox JoinBigBox2">
		<div class="joinImgBox joinImgBox2">
			<img class="joinFormImg2" src="/image/shopping02.jpg">
		</div>
		<c:forEach items="${payment}" var="payment">
			<c:if test="${principal.user.id eq payment.users.id}">
				<div class="payListBox">
					<table class="payListsmallBox">
						<tr class="payListsmallBox2">
							<td>
								<div class="">${payment.payment}</div>
							</td>
							<td>${payment.subscribeName}</td>
							<td><fmt:formatDate value="${payment.createDate}"
									pattern="yyyy-MM-dd" /></td>
						</tr>
					</table>
				</div>
			</c:if>
		</c:forEach>
	</div>
</div>

<%@ include file="../layout/footer.jsp"%>