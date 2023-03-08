<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<%@ include file="../layout/header.jsp"%>
<div class="generalPayment">
	<div class="paymentSmall">
		<div class="paymentTitle">
			<span>구매 페이지</span>
		</div>
		<div class="productInfoBigBox">
			<div class="paymentInfoTitle">구매한 제품:</div>
			<div class="productInfoBox">
				<div class="subscribeName" >상품명:&nbsp;<div id="subscribeName">${answer[0]}</div> </div>
				<div class="subscribeName" >결제 금액:&nbsp;<div id="subscribePrice">${answer[1]},${answer[2]}</div></div>
			</div>
		</div>
		<div class="productInfoBigBox">
			<div class="paymentInfoTitle">결제방식</div>
			<div class="paymentPlanBox">
				<div class="payDetailContentBox">
					<label class="payChoiceBoxsmall"> <input type="radio"
						id="account" class="accountPayment" name="payContent" value="account"
						onchange='payMent()'>
						<div class="payTypecheck" id="accountTitle1">
							<span>무통장입금<span>
						</div>
					</label>
				</div>
				<div class="payDetailContentBox">
					<label class="payChoiceBoxsmall"> <input type="radio"
						id="account" class="cardPay" name="payContent" value="cardPay"
						onchange='payMent()' checked="checked">
						<div class="payTypecheck" id="cardPayTitle2">
							<span>카드결제</span>
						</div>
					</label>
				</div>
			</div>
		</div>
	</div>
	<div class="cardPayment">
		<div class="cardPaymentSmall">
			<div class="cardPaymentTitleBox">
				<div class="cardPaymentTitle">카드 정보를 입력해주세요.</div>
			</div>
			<div class="cardPaymentInfoBox">
				<div class="cardNumInfoBox">
					<div class="cardNumInfoTItle">
						<label for="cardNumInfo">카드번호</label>
					</div>
					<div class="cardNumInfosmallBox">
						<input type="text" id="cardNumInfo" name="cardNumInfo"
							placeholder="0000"> - <input type="text" id="cardNumInfo"
							name="cardNumInfo" placeholder="0000"> - <input
							type="password" id="cardNumInfo" name="cardNumInfo"
							placeholder="0000"> - <input type="password"
							id="cardNumInfo" name="cardNumInfo" placeholder="0000">
					</div>
				</div>
				<div class="cardImportantInfoBox">
					<div class="cardNumInfoBox cardNumInfoBox2">
						<div>
							<label for="cardDate">유효기간</label> 
						</div>
						<div class="cardImpBox">
							<input type="text" id="cardDate" name="cardDate" placeholder="MMYY">
						</div>
					</div>
					<div  class="cardNumInfoBox cardNumInfoBox1">
						<div>
							<label for="cardCVC">CVC</label>
						</div>
						<div class="cardImpBox">
							<input type="text" id="cardCVC" name="cardCVC" placeholder="카드 뒷면 3자리 숫자">
						</div>
					</div>
				</div>
				
				<div class="cardNumInfoBox">
					<div class="cardPwdBox">
						<div>
							<label for="cardPwd">카드 비밀번호</label>
						</div>
						<div class="cardPwdInput">
							<input type="password" id="cardPwd" name="cardPwd" placeholder="비밀번호 앞 2자리 숫자">
						</div>
					</div>
				</div>
				<div class="cardAgreeBox">
					<div class="cardAgreeTitle">
						<input type="checkbox" name="cardAgree" value="yes" onclick='selectAll(this)'> 전체 약관
						동의
					</div>
					<div class="cardAgreeContent">
						<input type="checkbox" name="cardAgree" value="yes"> 작당모의
						개인(신용)정보 수집 및 이용 동의 <a href="">보기</a>
					</div>
					<div class="cardAgreeContent">
						<input type="checkbox" name="cardAgree" value="yes"> 작당모의
						→ 카드사 개인(신용)정보 제공 동의 <a href="">보기</a>
					</div>
					<div class="cardAgreeContent">
						<input type="checkbox" name="cardAgree" value="yes"> 카드사
						→ 작당모의 개인(신용)정보 제공 동의 <a href="">보기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="payment_BTN">
		<input class="paymentBtn" id="paymentBtn" type="button" value="결제하기">
	</div>
</div>
<script src="/js/pay.js"></script>
<script type="text/javascript">
function payMent(){
	if($('input:radio[class="accountPayment"]').is(':checked')){
		$('.cardPayment').hide();
	}else{
		$('.cardPayment').show();
	}
}

function selectAll(selectAll)  {
	  const checkboxes 
	       = document.getElementsByName('cardAgree');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked;
	  })
	}
</script>
<%@ include file="../layout/footer.jsp"%>