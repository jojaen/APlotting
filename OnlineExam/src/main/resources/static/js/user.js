let index = {

	init: function() {

		$("#joinBtn").on("click", () => {

			this.save();
		});

		$("#btn-findUserId").on("click", () => {

			this.findUserId();
		});

		$("#btn-findUserPwd").on("click", () => {

			this.findUserPwd();
		});

		$("#resetUserPwd").on("click", () => {

			this.findUserPwd2();
		});
		$("#userUpdateBtn").on("click", () => {

			this.userUpdate();
		});
	},



	save: function() {
		let inputCode = document.getElementById("userCode").value;
		let userRight = document.querySelector('select#selbox option:checked').value;
		let data = {
			username: $("#userid").val(),
			name: $("#username").val(),
			password: $("#userpwd").val(),
			email: $("#useremail1").val(),
			tel: $("#userphone").val(),
			signUpAgree: $("#signUpAgree").val(),
			userAddress: $("#useraddr").val(),
			userAddressDetail: $("#useraddrdetail").val()
		};

		let test = nameCheck() && idCheck() && pwdCheck() && pwdCheck2() && emailCheck() && phoneCheck() && infoagree();
		console.log("inputCode: " + inputCode);
		console.log("userRight: " + userRight);

		if (test) {
			if (inputCode == '777' && userRight == 'user') {
				$.ajax({
					//회원가입 수행 요청 
					//(100초라 가정한다면 도중에 done이나 fail 실행 )
					type: "POST",
					url: "/auth/joinProc",
					data: JSON.stringify(data), //http body 데이터
					contentType: "application/json; charset=utf-8",
					dataType: "json" //자동으로 변환해주기 때문에 생략 가능
					//응답의 결과가 문자열이 아닌 json으로 변환
				}).done(function(resp) {
					alert("회원가입이 완료되었습니다.");
					location.href = "/";
					//응답이 정상
				}).fail(function(error) {
					alert(JSON.stringify(error));
					//응답이 비정상
				});
			} else if (inputCode == '999' && userRight == 'manager') {
				$.ajax({
					//회원가입 수행 요청 
					//(100초라 가정한다면 도중에 done이나 fail 실행 )
					type: "POST",
					url: "/auth/joinProc2",
					data: JSON.stringify(data), //http body 데이터
					contentType: "application/json; charset=utf-8",
					dataType: "json" //자동으로 변환해주기 때문에 생략 가능
					//응답의 결과가 문자열이 아닌 json으로 변환
				}).done(function(resp) {
					alert("회원가입이 완료되었습니다.");
					location.href = "/";
					//응답이 정상
				}).fail(function(error) {
					alert(JSON.stringify(error));
					//응답이 비정상
				});
			} else {
				alert("회원코드를 확인해 주세요")
			}
		}
		else {
			alert("정보를 확인해 주세요")
		}

	},

	userUpdate: function() {
		let data = {
			id: $("#id").val(),
			name: $("#username").val(),
			email: $("#useremail1").val(),
			tel: $("#userphone").val(),
			signUpAgree: $("#signUpAgree").val(),
			userAddress: $("#useraddr").val(),
			userAddressDetail: $("#useraddrdetail").val()
		};
		console.log(data);
		$.ajax({
			//회원가입 수행 요청 
			//(100초라 가정한다면 도중에 done이나 fail 실행 )
			type: "PUT",
			url: "/user",
			data: JSON.stringify(data), //http body 데이터
			contentType: "application/json; charset=utf-8",
			dataType: "json" //자동으로 변환해주기 때문에 생략 가능
			//응답의 결과가 문자열이 아닌 json으로 변환
		}).done(function(resp) {
			alert("회원수정이 완료되었습니다.")
			location.href = "/";
			//응답이 정상
		}).fail(function(error) {
			alert(JSON.stringify(error))
			//응답이 비정상
		});
	},

	//아이디 찾기	
	findUserId: function() {
		let data = {
			name: $("#name").val(),
			tel: $("#tel").val()
		};
		console.log(data);
		$.ajax({
			type: "POST",
			url: "/auth/user/findUserId",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			console.log(resp.data.username);
			if (resp.data.username != undefined) {
				$("#findIdForm").hide();
				$("#findIdInfoBox2").hide();
				$(".modal_close").hide();
				$(".text").append("<div class='foundIdBigBox'>아이디를 찾았습니다!</div>" + "<div id='foundId' class='foundIdBox'>" +
					"내 아이디: " + resp.data.username + "</div><div class='foundIdLoginBtn'><a href='/auth/loginForm'>로그인하기</a></div>");
			} else {
				alert("일치하는 회원 정보가 없습니다.");
			}
			console.log(resp.data.userid);
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},

	//비밀번호 찾기		
	findUserPwd: function() {
		let data = {
			username: $("#userId").val(),
			name: $("#userName").val(),
			tel: $("#userPhone").val()
		};
		console.log(data);
		$.ajax({
			type: "POST",
			url: "/auth/user/findUserPwd",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			console.log(resp.data.username);
			if (resp.data.username != undefined) {
				$(".findIdInfo").hide();
				$(".modal_close2").hide();
				$(".text2").append("<input type='hidden' id='userEmail' value='" + resp.data.email + "'>" +
					"<div class='foundPwdBigBox'>비밀번호 재설정</div>" +
					"<div id='foundId' class='foundPwdBox'>" +
					"<div class='findIdInfoBox'><input type='password' id='oldPwd' name='oldPwd'  placeholder='현재 비밀번호' onkeyup='oldpwdCheck()' ></div>" +
					"<div class='newpwdCheck6'>비밀번호는 8자리 이상 문자, 숫자, 특수문자로 구성하여야 합니다.</div>" +
					"<div class='newpwdCheck7'>비밀번호를 입력해 주세요.</div>" +
					"<div class='newpwdCheck8'>사용 가능한 비밀번호입니다.</div>" +
					"<div class='findIdInfoBox'><input type='password' id='userpwd'name='userpwd' placeholder='새로운 비밀번호' onkeyup='newpwdCheck();'></div>" +
					"<div class='newpwdCheck0'>비밀번호는 8자리 이상 문자, 숫자, 특수문자로 구성하여야 합니다.</div>" +
					"<div class='newpwdCheck1'>비밀번호를 입력해 주세요.</div>" +
					"<div class='newpwdCheck2'>사용 가능한 비밀번호입니다.</div>" +
					"<div class='findIdInfoBox'><input type='password' id='userpwd2'name='userpwd2' placeholder='새로운 비밀번호 재입력' onkeyup='newpwdCheck2();'></div>" +
					"<div class='newpwdCheck3'>일치하지 않습니다.</div><div class='newpwdCheck4'>비밀번호가 일치합니다.</div>" +
					"<div class='newpwdCheck5'>비밀번호를 입력해 주세요.</div></div>" +
					"<div class='foundIdLoginBtn'><button type='button' id='resetUserPwd' onclick='resetUserPwd();'>확인</button></div>");
			} else {
				alert("일치하는 회원 정보가 없습니다.");
			}
			console.log(resp.data.userid);
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
}

index.init();


let usersDelete = {
	init: function() {
		$("#btn-usersDelete").on("click", () => {
			this.usersDelete();
		});
	},
	usersDelete: function() {
		var id = $("#btn-usersDelete").val();
		$.ajax({
			type: "DELETE",
			url: "/api/user/" + id,
			dataType: "json"
		}).done(function(resp) {
			alert("삭제되었습니다.");
			location.href = "/user/adminPage";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	},
}
usersDelete.init();

//비밀번호 리셋
function resetUserPwd() {
	let data = {
		email: $("#userEmail").val(),
		password: $("#userpwd").val()
	};
	console.log(data);
	let test = newpwdCheck() && newpwdCheck2() && oldpwdCheck();

	if (test) {
		$.ajax({
			type: "PUT",
			url: "/auth/user/resetPwd",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("비밀번호 변경이 완료되었습니다.");
			location.href = "/auth/loginForm";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
	}
	else {
		alert("정보를 확인해 주세요")
	}
}


// 카카오톡 주소 api
function addr() {
	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ''; // 주소 변수
			var extraAddr = ''; // 참고항목 변수

			//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				addr = data.roadAddress;
			} else { // 사용자가 지번 주소를 선택했을 경우(J)
				addr = data.jibunAddress;
			}

			// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			if (data.userSelectedType === 'R') {
				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
					extraAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if (data.buildingName !== '' && data.apartment === 'Y') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			//document.getElementById('sample6_postcode').value = data.zonecode;
			document.getElementById("useraddr").value = addr;
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("useraddrdetail").focus();

		}
	}).open();
}


let isNickValid = false;
let isIdValid = false;
let isPwdValid = false;
let isMailValid = false;
let isPhoneValid = false;
let isAddrValid = false;

//아이디
function idCheck() {
	let inputId = document.getElementById("userid").value;

	var pattern1 = /[0-9]/; // 숫자
	var pattern2 = /[a-zA-Z]/; // 문자
	var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자

	var numtextyn = (pattern1.test(inputId) || pattern2.test(inputId));
	if (!numtextyn || pattern3.test(inputId) || inputId.length > 14) {
		$('.idCheck7').show();
		$('.idCheck5').hide();
		$('.idCheck6').hide();
		$('.idCheck8').hide();
		isIdValid = false;
	}
	else {
		isIdValid = true;
	}

	if (isIdValid) {
		let id = $("#userid").val();

		$.ajax({
			type: "POST",
			url: "/auth/idCheck/" + id,
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			console.log(resp.data)
			if (resp.data == 1) {
				$('.idCheck5').show();
				$('.idCheck6').hide();
				$('.idCheck7').hide();
				$('.idCheck8').hide();
				return false;
			}
			else {
				$('.idCheck5').hide();
				$('.idCheck6').show();
				$('.idCheck7').hide();
				$('.idCheck8').hide();
				return true;
			}
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});
		return true;
	}
	else {

		if (inputId == "") {
			('.idCheck8').show();
			$('.idCheck6').hide();
			$('.idCheck5').hide();
			$('.idCheck7').hide();
		}
		else {
			$('.idCheck7').show();
			$('.idCheck5').hide();
			$('.idCheck6').hide();
			$('.idCheck8').hide();
		}
		return false;
	}
}

//비밀번호
function pwdCheck() {
	let inputPwd = document.getElementById("userpwd").value;
	let f = document.getElementById("userpwd");
	let x = document.getElementById("pwdchk");

	var pattern1 = /[0-9]/; // 숫자
	var pattern2 = /[a-zA-Z]/; // 문자
	var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
	console.log(inputPwd);
	if (!pattern1.test(inputPwd) || !pattern2.test(inputPwd) || !pattern3.test(inputPwd) || inputPwd.length < 8) {
		$('.pwdCheck0').show();
		$('.pwdCheck1').hide();
		$('.pwdCheck2').hide();

		isPwdValid = false;
	}
	else {
		$('.pwdCheck0').hide();
		$('.pwdCheck1').hide();
		$('.pwdCheck2').hide();
		isPwdValid = true;
	}

	if (isPwdValid) {
		$('.pwdCheck2').show();
		$('.pwdCheck1').hide();
		$('.pwdCheck0').hide();
		return true;
	}
	else {


		if (inputPwd == "") {
			x.innerText = "비밀번호는 필수 입력 값입니다."
			$('.pwdCheck1').show();
			$('.pwdCheck0').hide();
			$('.pwdCheck2').hide();
		}
		return false;
	}
}

//비밀번호 확인
function pwdCheck2() {
	let inputPwdChk = document.getElementById("userpwdChk").value;
	let inputPwd = document.getElementById("userpwd").value;
	console.log(inputPwdChk);
	if (inputPwd != inputPwdChk) {
		$('.pwdCheck3').show();
		$('.pwdCheck4').hide();
		$('.pwdCheck5').hide();
		return false;
	} if (inputPwdChk == "") {
		$('.pwdCheck4').hide();
		$('.pwdCheck3').hide();
		$('.pwdCheck5').show();
	}
	else {
		$('.pwdCheck4').show();
		$('.pwdCheck3').hide();
		$('.pwdCheck5').hide();
		return true;
	}
}

//이름
function nameCheck() {
	let inputNick = document.getElementById("username").value;
	let f = document.getElementById("username");
	let x = document.getElementById("namechk");

	var pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크
	var pattern1 = /[0-9]/; // 숫자
	var pattern2 = /[a-zA-Z]/; // 영문자
	var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자

	var nametest = (pattern_kor.test(inputNick) || pattern2.test(inputNick));
	if (!nametest || pattern3.test(inputNick) || pattern1.test(inputNick) || inputNick.length > 10) {
		$('.nameCheck1').show();
		$('.nameCheck2').hide();
		isNickValid = false;
	}
	else {
		isNickValid = true;
	}

	if (isNickValid) {
		$('.nameCheck1').hide();
		$('.nameCheck2').hide();
		return true;
	}
	else {


		if (inputNick == "") {
			$('.nameCheck1').hide();
			$('.nameCheck2').show();
		}
		else {
			$('.nameCheck1').show();
			$('.nameCheck2').hide();
		}
		return false;
	}
}

//이메일
function emailCheck() {
	let inputEmail = document.getElementById("useremail1").value;
	console.log("email" + inputEmail);
	isMailValid = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i.test(inputEmail);
	console.log("email" + isMailValid);
	if (isMailValid) {

		let data = {
			email: $('#useremail1').val()
		};

		$.ajax({
			type: "POST",
			url: "/auth/user/findUserEmail",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			if (resp.data.email != undefined) {
				$('.emailCheck1').show();
				$('.emailCheck2').hide();
				$('.emailCheck3').hide();
				$('.emailCheck4').hide();
			} else {

			}
		}).fail(function(error) {

		});
		$('.emailCheck1').hide();
		$('.emailCheck2').hide();
		$('.emailCheck3').hide();
		$('.emailCheck4').show();
		return true;
	}
	else {
		if (inputEmail == "") {
			$('.emailCheck1').hide();
			$('.emailCheck2').hide();
			$('.emailCheck3').show();
			$('.emailCheck4').hide();
		}
		else {
			$('.emailCheck1').hide();
			$('.emailCheck2').show();
			$('.emailCheck3').hide();
			$('.emailCheck4').hide();
		}
		return false;
	}
}


//핸드폰
function phoneCheck() {

	let inputPhone = document.getElementById("userphone").value;
	let f = document.getElementById("userphone");

	isPhoneValid = /^01(?:0|1|[6-9])(?:\d{4})\d{4}$/.test(inputPhone);

	if (isPhoneValid) {
		$('.phoneNumCheck2').show();
		$('.phoneNumCheck1').hide();
		return true;
	}
	else {
		$('.phoneNumCheck1').show();
		$('.phoneNumCheck2').hide();
		return false;
	}
}
//동의
function infoagree() {
	let inputagree = document.getElementById("signUpAgree").checked;

	if (inputagree == false) {
		$('.agreeCheck1').show();
		return false;

	}
	else {
		$('.agreeCheck1').hide();
		return true;
	}

}

//비밀번호 찾기(현재 비밀번호)
function oldpwdCheck() {
	let inputPwd = document.getElementById("oldPwd").value;

	var pattern1 = /[0-9]/; // 숫자
	var pattern2 = /[a-zA-Z]/; // 문자
	var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
	console.log(inputPwd);
	if (!pattern1.test(inputPwd) || !pattern2.test(inputPwd) || !pattern3.test(inputPwd) || inputPwd.length < 8) {
		$('.newpwdCheck6').show();
		$('.newpwdCheck7').hide();
		$('.newpwdCheck8').hide();
		isPwdValid = false;
	}
	else {
		$('.newpwdCheck6').hide();
		$('.newpwdCheck7').hide();
		$('.newpwdCheck8').show();
		isPwdValid = true;
	}

	if (isPwdValid) {
		$('.newpwdCheck7').hide();
		$('.newpwdCheck6').hide();
		$('.newpwdCheck8').show();
		return true;
	}
	else {

		if (inputPwd == "") {
			$('.newpwdCheck7').show();
			$('.newpwdCheck6').hide();
			$('.newpwdCheck8').hide();
		}
		return false;
	}
}

//비밀번호 찾기
function newpwdCheck() {
	let inputPwd = document.getElementById("userpwd").value;
	let oldinputPwd = document.getElementById("oldPwd").value;

	var pattern1 = /[0-9]/; // 숫자
	var pattern2 = /[a-zA-Z]/; // 문자
	var pattern3 = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
	console.log(inputPwd);
	if (!pattern1.test(inputPwd) || !pattern2.test(inputPwd) || !pattern3.test(inputPwd) || inputPwd.length < 8) {
		$('.newpwdCheck0').show();
		$('.newpwdCheck1').hide();
		$('.newpwdCheck2').hide();
		isPwdValid = false;
	}
	else {
		$('.newpwdCheck0').hide();
		$('.newpwdCheck1').hide();
		$('.newpwdCheck2').show();
		isPwdValid = true;
	}

	if (isPwdValid) {
		$('.newpwdCheck1').hide();
		$('.newpwdCheck0').hide();
		$('.newpwdCheck2').show();
		return true;
	}
	else {

		if (inputPwd == "") {
			$('.newpwdCheck1').show();
			$('.newpwdCheck0').hide();
			$('.newpwdCheck2').hide();
		}
		return false;
	}
}


//비밀번호 찾기 확인
function newpwdCheck2() {
	let inputPwdChk = document.getElementById("userpwd2").value;
	let inputPwd = document.getElementById("userpwd").value;
	console.log(inputPwdChk);
	if (inputPwd != inputPwdChk) {
		$('.newpwdCheck3').show();
		$('.newpwdCheck4').hide();
		$('.newpwdCheck5').hide();
		return false;
	} if (inputPwdChk == "") {
		$('.newpwdCheck4').hide();
		$('.newpwdCheck3').hide();
		$('.newpwdCheck5').show();
	}
	else {
		$('.newpwdCheck4').show();
		$('.newpwdCheck3').hide();
		$('.newpwdCheck5').hide();
		return true;
	}
}
