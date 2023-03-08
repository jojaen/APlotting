<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<div class="payMainBox">
	<div class="payTitleBox">
		<span>멤버십 구매</span>
	</div>
	<div class="payMainSmallBox">
	<div class="payMainContentBox">
		<div class="payContentBox">
			<label class="test_obj">
				<input type="radio" id="1mounth" name="subscribe" value="39,100원" onclick='getGender(event)'>
				<div class="payTypecheck" id="subscribeTitle1">
					<span>1개월<br>이용권<span>
				</div>
			</label>
		</div>
		<div class="payContentBox">
			<label class="test_obj">
			<input type="radio" id="2mounth" name="subscribe" value="69,100원" onclick='getGender(event)'>
				<div class="payTypecheck" id="subscribeTitle2">
					<span>3개월<br>이용권</span>
				</div>
			</label>
		</div>
		<div class="payContentBox">
			<label class="test_obj"> <input type="radio" name="subscribe" value="79,100원" onclick='getGender(event)'>
				<div class="payTypecheck" id="subscribeTitle3">
					<span>6개월<br>이용권</span>
				</div>
			</label>
		</div>
		<div class="payContentBox">
			<label class="test_obj"> <input type="radio" name="subscribe" value="89,100원" onclick='getGender(event)'>
				<div class="payTypecheck" id="subscribeTitle4">
					<span>1년<br>이용권</span>
				</div>
			</label>
		</div>
	</div>
	<div class="payMainContentBox">
		<div class="payContentBox">
			<label class="test_obj">
				<input type="radio" name="subscribe" value="159,100원" onclick='getGender(event)'>
				<div class="payTypecheck" id="subscribeTitle5">
					<span>2년<br>이용권</span>
				</div>
			</label>
		</div>
		<div class="payContentBox">
			<label class="test_obj"> <input type="radio" name="subscribe" value="259,100원" onclick='getGender(event)'>
				<div class="payTypecheck" id="subscribeTitle6">
					<span>3년<br>이용권</span>
				</div>
			</label>
		</div>
		<div class="payContentBox">
			<label class="test_obj"> <input type="radio" name="subscribe" value="359,100원" onclick='getGender(event)'>
				<div class="payTypecheck" id="subscribeTitle7">
					<span>4년<br>이용권</span>
				</div>
			</label>
		</div>
		<div class="payContentBox">
			<label class="test_obj"> <input type="radio" name="subscribe" value="459,100원" onclick='getGender(event)'>
				<div class="payTypecheck" id="subscribeTitle8">
					<span>무제한<br>이용권</span>
				</div>
			</label>
		</div>
	</div>
	<div class="totalPriceBox">
		<div>결제 금액:</div>
		<div id='totalPriceResult'></div>
	</div>
	<div class="paymentOptionBox">
		<div class="paymentOption">
			<button id="check_module" class="kakaotalkBox" type="button">카카오톡 결제</button>
			<input type="hidden" id="kakaoPayment" value="카카오톡 결제">
		</div>
		<div class="paymentOption">
			<button id="check_module2" class="kakaotalkBox" type="button" onclick="GeneralPayment();">일반 결제</button>
		</div>
	</div>
	</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script type="text/javascript" src="/js/Membership.js"></script>
<script src="/js/kakaopay.js"></script>
<script type="text/javascript">
function getGender(event) {
	  document.getElementById('totalPriceResult').innerText = 
	    event.target.value;
	}
</script>

<%@ include file="../layout/footer.jsp"%>