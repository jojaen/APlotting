<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="joinFormBox">
	<div class="joinChoice">
		<div class="SignUpBtn">
			<div class="smallbtnbox2">
				<a href="/auth/joinForm" class="aSign" id="aSign">Sign Up</a>
			</div>
		</div>
		<div class="LoginBtn">
			<div class="smallbtnbox2">
				<a href="/auth/loginForm" class="aLogin" id="aLogin">Login</a>
			</div>
		</div>
	</div>
	<div class="JoinBigBox">
		<div class="joinImgBox">
			<img class="joinFormImg" src="/image/joinFormImg.jpg">
		</div>
		<form novalidate action="" name="sentMessage" name="frm" id="joinForm"
			method="post">

			<label class="styleBox" for="userid">아이디</label><Br>
			<div class="bBox">
				<input type="text" name="userid" id="userid" class="idCheck"
					placeholder="Your id" required onkeyup="idCheck()" autofocus="autofocus">
				<div class="idCheck8">아이디는 필수 입력 값입니다.</div>
				<div class="idCheck7">아이디는 14자리 이하 문자 또는 숫자로 구성하여야 합니다.</div>
				<div class="idCheck5">이미 사용중인 아이디 입니다.</div>
				<div class="idCheck6">사용 가능한 아이디 입니다.</div>
			</div>

			<label class="styleBox" for="userpwd">비밀번호</label><Br>
			<div class="bBox">
				<input type="password" name="userpwd" id="userpwd" class="pwdCheck"
					placeholder="Your password" required onkeyup="pwdCheck();">
				<div class="pwdCheck0">비밀번호는 8자리 이상 문자, 숫자, 특수문자로 구성하여야 합니다.</div>
				<div class="pwdCheck1">비밀번호를 입력해 주세요.</div>
				<div class="pwdCheck2">사용 가능한 비밀번호입니다.</div>
			</div>

			<label class="styleBox" for="userpwdChk">비밀번호 재확인</label><Br>
			<div class="bBox">
				<input type="password" name="userpwdChk" id="userpwdChk"
					class="pwdCheck" placeholder="Your password" required
					onkeyup="pwdCheck2()">
				<div class="pwdCheck3">일치하지 않습니다.</div>
				<div class="pwdCheck4">비밀번호가 일치합니다.</div>
				<div class="pwdCheck5">비밀번호를 입력해 주세요.</div>
			</div>

			<label class="styleBox" for="username">이름</label><Br>
			<div class="bBox">
				<input type="text" name="username" id="username" class="nameCheck"
					placeholder="Your Name" required onkeyup="nameCheck()">
				<div class="nameCheck1">10글자 이하로 입력해주세요.(숫자와 특수문자를 사용할 수
					없습니다.)</div>
				<div class="nameCheck2">이름을 입력해 주세요.</div>
			</div>

			<label class="styleBox" for="useremail">이메일</label>
			<div class="bBox">
				<input type="email" name="useremail" id="useremail1"
					class="mailCheck" placeholder="Your email" required
					onkeyup="emailCheck()">
				<div class="emailCheck1">이미 사용중인 이메일입니다.</div>
				<div class="emailCheck2">올바른 형식으로 작성해 주세요.</div>
				<div class="emailCheck3">이메일을 작성해 주세요.</div>
				<div class="emailCheck4">사용 가능한 이메일입니다.</div>
			</div>
			<label class="styleBox" for="userphone">전화번호</label><Br>
			<div class="bBox">
				<input type="text" name="userphone" id="userphone"
					class="phoneCheck" placeholder="Your phone" required
					onkeyup="phoneCheck()">
				<div class="phoneNumCheck1">전화번호를 입력해 주세요.(하이픈을 제외하고 입력해 주세요.)</div>
				<div class="phoneNumCheck2">사용 가능한 전화번호입니다.</div>
			</div>
			<label class="styleBox" for="userright">회원권한</label>
			<div class="usercodebox">
				<input type="text" name="usercode" id="userCode" class="rightCheck"
					placeholder="Member Code" required onkeyup="rightCheck()">
				<div class="type_select">
				<select name="userright_chk" id="selbox" class="selectuser">
                  <option value="user">일반회원</option>
                  <option value="manager">관리자</option>	
				</select>
				</div>
			</div>
			<label class="styleBox" for="useraddr">주소</label><Br>
			<div class="bBox">
				<table>
					<tr>
						<input type="text" class="addrCheck" name="useraddr" id="useraddr"
							placeholder="Your addr" required onclick="addr()">
					</tr>
					<tr>
						<input type="text" class="addrCheck2" name="useraddrdetail"
							id="useraddrdetail" placeholder="Your addr detail" required>
					</tr>
				</table>
			</div>
			<div class="bBox" id="agreeCheckBox">
				<input type="checkbox" name="signUpAgree" value="yes"
					id="signUpAgree"> <a>서비스 약관 </a>및<a > 개인
					정보 보호 정책</a>에 동의합니다.
				<div class="agreeCheck1">약관에 동의해 주세요.</div>
			</div>
		</form>
		<div class="joinBtnBox">
			<input type="button" id="joinBtn" value="Sign Up" class="signUpBtn"></input>
		</div>
	</div>
</div>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<%@ include file="../layout/footer.jsp"%>