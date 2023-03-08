<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<div class="noticeBoardSaveBox">
	<div class="noticeBoardSaveSmallBox">
		<form onsubmit="update()">
			<div class="noticeTitleBox">
				<input name="title" type="text" placeholder="${nboard.title}"
					value="${nboard.title}" class="boardTitleSave" id="title">
			</div>
			<input type="hidden" id="id" value="${nboard.id}" />
			<div class="noticeTitleBox">
				<input type="text" id="username" value="관리자" readonly>
			</div>
			<div class="noticewriterBox">
				<textarea name="content" class="boardSaveTextarea" rows="24"
					id="content">${nboard.content}</textarea>
			</div>
			
				<div class="fileBigbox">
					<div id="att_zone"></div>
					<div id="att_zone2">
						<span class="upload-name">"+" 버튼을 눌러 사진을 추가하세요.</span> <label
							for="btnAtt">+</label> <input type="file" id="btnAtt"
							class="files" name="uploadFile" multiple="multiple" />
					</div>
					<div  class="notice_saveBtnBox">
						<input type="button" value="수정하기" id="nboardUpdateaBtn">
					</div>
				</div>
		</form>
	</div>
</div>

<%@ include file="../layout/footer.jsp"%>