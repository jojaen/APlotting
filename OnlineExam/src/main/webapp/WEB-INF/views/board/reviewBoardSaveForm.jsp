<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="reviewSaveBox">
	<div class="reviewSaveSmallBox">
		<form onsubmit="save()">
			<div class="noticeTitleBox">
				<input name="title" type="text" placeholder="제목을 입력하세요." id="title">
			</div>
			<div class="noticeTitleBox">
				<input type="text" id="username" value="${principal.user.name}"
					readonly>
			</div>
			<div class="noticewriterBox">
				<textarea name="content" class="boardSaveTextarea" rows="24"
					id="content"></textarea>
			</div>
			<div class="reviewsaveTeacher">
				<div>
					<span>강의선택</span>
				</div>
				<div class="file_select" style="height: 28px;">
					<select class="filt_select" id="setTeacher"
						style="height: 28px; width: 100%;">
						<option value="풀스택 강사" name="선생님">풀스택</option>
						<option value="JS 강사" name="선생님">자바스크립트</option>
						<option value="자바 강사" name="선생님">자바</option>
						<option value="파이썬 강사" name="선생님">파이썬</option>
						<option value="백엔드 강사" name="선생님">백엔드</option>
					</select>
				</div>

				<div class="boardSaveSetStar">
					<fieldset id="setStar">
						<legend>강의 만족도</legend>
						<input type="radio" name="rating" value="1" id="rate1"> 
						<label for="rate1">⭐</label> 
						<input type="radio" name="rating" value="2" id="rate2"> 
						<label for="rate2">⭐⭐</label> 
						<input type="radio" name="rating" value="3" id="rate3"> 
						<label for="rate3">⭐⭐⭐</label> 
						<input type="radio" name="rating" value="4" id="rate4"> 
						<label for="rate4">⭐⭐⭐⭐</label> 
						<input type="radio" name="rating" value="5" id="rate5">
					 	<label for="rate5">⭐⭐⭐⭐⭐</label>
					</fieldset>
				</div>
			</div>
			<div class="fileBigbox">
				<div id="att_zone"></div>
				<div id="att_zone2">
					<span class="upload-name">"+" 버튼을 눌러 사진을 추가하세요.</span> <label
						for="btnAtt">+</label> <input type="file" id="btnAtt"
						class="files" name="uploadFile" multiple="multiple" />
				</div>

				<div class="notice_saveBtnBox">
					<input type="button" value="등록하기" id="rboardSaveBtn">
				</div>
			</div>
		</form>
	</div>
</div>

<%@ include file="../layout/footer.jsp"%>

