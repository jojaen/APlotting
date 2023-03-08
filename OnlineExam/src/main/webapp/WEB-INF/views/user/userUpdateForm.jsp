<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


    <div class="joinFormBox">
    <div class="joinChoice">      
      
      <div class="SignUpBtn2">
        <div class="smallbtnbox">
          <a href="/membership/myPayList" class="aSign2" id="aSign2">결제내역</a>
        </div>
      </div>
      <div class="LoginBtn2">
        <div class="smallbtnbox">
          <a href="/auth/userUpdateForm" class="aLogin2" id="aLogin2">회원정보수정</a>
        </div>
      </div>

    </div>
    <div class="JoinBigBox">
      <div class="joinImgBox">
      <input type="hidden" value="${principal.user.id}" id="id">
        <img class="joinFormImg" src="/image/joinFormImg.jpg">
      </div>
      <form novalidate action="" name="sentMessage" name="frm" id="joinForm" method="post">
       
        <label class="styleBox" for="userid">아이디</label><Br>
        <div class="bBox">
          <input type="text" name="userid" value="${principal.user.username}" id="userid" class="idCheck" placeholder="Your id" readonly>
        </div>
        <label class="styleBox" for="userpwd">비밀번호</label><Br>
        <div class="bBox">
          <input type="password" name="userpwd" id="userpwd" class="pwdCheck" placeholder="비밀번호 찾기를 이용해주세요" style=" background-color: #eee;" readonly>
        </div>
        <label class="styleBox" for="username">이름</label><Br>
        <div class="bBox">
          <input type="text" name="username"  value="${principal.user.name}" id="username" class="nameCheck" placeholder="Your Name" required>
        </div>
        
        <label class="styleBox" for="useremail">이메일</label>
        <div class="bBox">
          <input type="email" name="useremail"  value="${principal.user.email}" id="useremail1" class="mailCheck" placeholder="Your email" required>
        </div>
        <label class="styleBox" for="userphone">전화번호</label><Br>
        <div class="bBox">
          <input type="text" name="userphone"  value="${principal.user.tel}" id="userphone" class="phoneCheck" placeholder="Your phone" required>
        </div>
        <label class="styleBox" for="useraddr">주소</label><Br>
        <div class="bBox">
          <table>
            <tr>
              <input type="text" class="addrCheck" name="useraddr"  value="${principal.user.userAddress}" id="useraddr" placeholder="Your addr" required>
            </tr>
            <tr>
              <input type="text" class="addrCheck2" name="useraddrdetail" value="${principal.user.userAddressDetail}" id="useraddrdetail"
                placeholder="Your addr detail" required>
            </tr>
          </table>
        </div>
        <div class="bBox" id="agreeCheckBox">
          <input type="checkbox" name="agreeCheck" value="yes" id="signUpAgree">
          <a href="">서비스 약관 </a>및<a href=""> 개인 정보 보호 정책</a>에 동의합니다.
        </div>
      </form>
      <div class="joinBtnBox">
        <input type="button" id="userUpdateBtn" value="회원정보 수정" class="signUpBtn signUpBtn2"></input>
      </div>
    </div>
  </div>
    <%@ include file="../layout/footer.jsp"%>