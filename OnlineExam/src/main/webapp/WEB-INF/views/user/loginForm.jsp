<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

	<div class="loginFormBox">
    <div class="loginChoice">
      <div class="SignUpBtn2">
        <div class="smallbtnbox">
          <a href="/auth/joinForm" class="aSign2" id="aSign2">Sign Up</a>
        </div>
      </div>
      <div class="LoginBtn2">
        <div class="smallbtnbox">
          <a href="/auth/loginForm" class="aLogin2" id="aLogin2">Login</a>
        </div>
      </div>
    </div>
    <div class="loginStyleBox">
      <div class="loginImgBox">
        <img class="loginFormImg" src="/image/loginFormImg.jpg">
      </div>
      <form action="/auth/loginProc" method="POST" name="login" id="loginForm">
        <div class="bBox2">
          <input type="text" id="username" name="username" class="userid" placeholder="아이디" autofocus="autofocus">
        </div>
        <div class="bBox2">
          <input type="password" id="password" name="password" class="userpwd" placeholder="비밀번호">
        </div>
        <div class="bBox3">
          <div class="logintpye">
            <input type="checkbox" name="remember"> 로그인상태유지
          </div>
          <div class="findInfo">
          	<button type='button' id="modal_btn">아이디 찾기</button>
          	<span>|&nbsp;</span>
            <button type='button' id="modal_btn2">비밀번호 찾기</button>
          </div>
        </div>
        <div class="bBox2">
          <button type="submit" id="login-btn" name="userLogin">Login</button><br>
          <a href="/auth/joinForm" id="join-btn">Sign Up</a>
        </div>
      </form>
    </div>
  </div>


<!-- 아이디 찾기 -->
<div class="modal_background"></div>
<div class="modal_wrap">
	<div class="modal_close">
		<span>X</span>
	</div>
	<div class="text">
		<form name="findId" id="findIdForm">
			<div class="findIdInfo">
				<div class="findIdTitle">
					<div>ID 찾기</div>
				</div>
				<div class="findIdInfoBox">
					<input type="text" id="name" placeholder="이름">
				</div>
				<div class="findIdInfoBox">
					<input type="tel" id="tel" placeholder="핸드폰 번호">
				</div>
		</form>
		<div class="findIdInfoBox2">
			<div class="findIdBtn">
				<button type="button" id="btn-findUserId">ID 확인</button>
			</div>
		</div>
	</div>
</div>
</div>


<!-- 비밀번호 찾기 -->
<div class="modal_background2"></div>
<div class="modal_wrap2">
    <div class="modal_close2"><span>X</span></div>
    <div class="text2">
       <div class="findIdInfo">
        	<div class="findIdTitle">
        		<div>비밀번호 찾기</div>
        	</div>
	        <div class="findIdInfoBox">
	        	<input type="text" id="userId" name="userId" placeholder="ID">
	        </div>
	        <div class="findIdInfoBox">
	        	<input type="text" id="userName" name="userName" placeholder="이름">
	        </div>
	        <div class="findIdInfoBox">
	        	<input type="tel" id="userPhone" name="userPhone" placeholder="핸드폰 번호">
	        </div>
	        <div class="findIdInfoBox2">
	        	<div class="findIdBtn">
	        		<button type="button" id="btn-findUserPwd">비밀번호 재설정</button>
	        	</div>
	        </div>
        </div>
    </div>
</div>

<script>

//아이디

    function modalOpen() {
        document.querySelector('.modal_wrap').style.display = 'block';
        document.querySelector('.modal_background').style.display = 'block';
    }

    // 모달 끄기
    function modalClose() {
        document.querySelector('.modal_wrap').style.display = 'none';
        document.querySelector('.modal_background').style.display = 'none';

    }


    //버튼 클릭리스너 달기
    document.querySelector('#modal_btn').addEventListener('click', modalOpen);
    document.querySelector('.modal_close').addEventListener('click', modalClose);
    
    
    
//비밀번호

 function modalOpen2() {
        document.querySelector('.modal_wrap2').style.display = 'block';
        document.querySelector('.modal_background2').style.display = 'block';
    }

    // 모달 끄기
    function modalClose2() {
        document.querySelector('.modal_wrap2').style.display = 'none';
        document.querySelector('.modal_background2').style.display = 'none';
    }


    //버튼 클릭리스너 달기
    document.querySelector('#modal_btn2').addEventListener('click', modalOpen2);
    document.querySelector('.modal_close2').addEventListener('click', modalClose2);
    

    </script>
    
<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>