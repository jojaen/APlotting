<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="questionSaveBox">
	<div class="questionSaveSmallBox">
		<form onsubmit="save()">
			<div class="questionTitleBox">
				 <input type="text" class="userRealname" id="username" value="${principal.user.name}" readonly>
          	</div>
          	<div class="teacherSelectBigBox">
	          	
	          		<select id="teachersSelect" onchange="teacherName(this)">
						<option disabled selected>과목 선택</option>
						<option value="a">풀스택</option>
						<option value="b">자바스크립트</option>
						<option value="c">자바</option>
						<option value="d">파이썬</option>
						<option value="e">백앤드</option>
					</select>
	          	
	          		<select id="teachersSelectName" name="teachersSelectName" class="teachersSelectName">
						<option>강사님 선택</option>
					</select>
	          	
          	</div>
          	<div class="questionwriterBox">
          		<textarea name="content" class="boardSaveTextarea" rows="24" id="content"></textarea>
          	</div>
		</form>
		<div class="fileBigbox">
				<div class="question_saveBtnBox">
					<input type="submit" value="등록하기" id="questionSave_btn" >
				</div>
			</div>
	</div>
</div>

<script>
function teacherName(e){
	var fullStack = ["김유진 강사님"];
	var javascript = ["김효식 강사님"];
	var java = ["문승기 강사님"];
	var python = ["이혜정 강사님"];
	var backend = ["조재현 강사님"];
	var target = document.getElementById("teachersSelectName");
	
	if(e.value == "a") var d = fullStack;
	else if(e.value == "b") var d = javascript;
	else if(e.value == "c") var d = java;
	else if(e.value == "d") var d = python;
	else if(e.value == "e") var d = backend;
	
	target.options.length = 0;
	
	for ( x in d ) {
		var opt = document.createElement("option");
		opt.value = d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}
}

</script>

<%@ include file="../layout/footer.jsp"%>