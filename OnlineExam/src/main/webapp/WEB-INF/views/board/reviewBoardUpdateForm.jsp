<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>



<div class="reviewSaveBox">
	<div class="reviewSaveSmallBox">

		<form>
			<div class="noticeTitleBox">
				<input type="hidden" id="id" value="${board.id}" /> <input
					name="title" type="text" value="${board.title}"
					class="boardTitleSave" id="title">
			</div>
			<div class="noticeTitleBox">
				<input type="text" id="username" value="${board.username.name}"
					readonly>
			</div>
			<div class="noticewriterBox">
				<textarea name="content" class="boardSaveTextarea" rows="24"
					id="content">${board.content}</textarea>
			</div>
			<div class="reviewsaveTeacher">
				<div>
					<span>강의선택</span>
				</div>
				<div class="file_select" style="height: 28px;">
					<select class="filt_select" id="setTeacher"
						style="height: 28px; width: 100%;">
						<option value="승기씨" name="선생님">풀스택</option>
						<option value="손석구" name="선생님">자바스크립트</option>
						<option value="이도현" name="선생님">자바</option>
						<option value="김혜수" name="선생님">파이썬</option>
						<option value="엄정화" name="선생님">백앤드</option>
					</select>
				</div>
				<div class="boardSaveSetStar">
					<fieldset id="setStar">
						<legend>강의 만족도</legend>
						<input type="radio" name="rating" value="1" id="rate1"> <label
							for="rate1">⭐</label> <input type="radio" name="rating" value="2"
							id="rate2"> <label for="rate2">⭐⭐</label> <input
							type="radio" name="rating" value="3" id="rate3"> <label
							for="rate3">⭐⭐⭐</label> <input type="radio" name="rating"
							value="4" id="rate4"> <label for="rate4">⭐⭐⭐⭐</label> <input
							type="radio" name="rating" value="5" id="rate5"> <label
							for="rate5">⭐⭐⭐⭐⭐</label>
					</fieldset>
				</div>
			</div>
			<div id="fileBigbox">
				<div id="att_zone"></div>
				<div id="att_zone2">
					<span class="upload-name">"+" 버튼을 눌러 사진을 추가하세요.</span> <label
						for="btnAtt">+</label> <input type="file" id="btnAtt"
						class="files" name="uploadFile" multiple="multiple" />
				</div>
				<div class="notice_saveBtnBox">
					<input type="button" value="수정하기" id="rboardUpdateaBtn"
						class="boardSaveBtn">
				</div>
			</div>
		</form>
	</div>
</div>

<%@ include file="../layout/footer.jsp"%>
