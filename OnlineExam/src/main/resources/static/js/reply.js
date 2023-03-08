let oerReply = {
	init:function(){
		
		$("#btn-reply-save").on("click",() => {
			this.save();
		});
		$("#btn-reply-delete").on("click",() => {
			this.replyDelete();
		});

	},
	
	save:function(){
		let data={
			content:$("#rely-content").val()
		};
		
		let boardId = $("#boardId").val()

		$.ajax({
			type:"POST",
			url:`/api/rboard/${boardId}/reply`,
			data:JSON.stringify(data),
			contentType:"application/json;charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("댓글작성이 완료되었습니다.");
			window.location.reload();
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	replyDelete: function(boardId,replyId){
		console.log(boardId, replyId)
		$.ajax({                                          //들고 올게 없기때문에 data가 필요없어서 지웠다.
			type:"DELETE",
			url:`/api/rboardDetail/${boardId}/reply/${replyId}`, //주소파라미터 값으로 넘길거다 이건 스크립트에서 스트링으로 넘어갈 수 있다.
			dataType:"json"
		}).done(function(resp){
			alert("댓글삭제가 완료되었습니다.");
			
			window.location.reload();  //삭제가 완료되면 해당게시글로 돌아온다는 뜻이
			/*location.href="/board/"+boardId;*/  //`` 이걸 쓰는걸 빽트기라고 한다.
		});
	},
	
}

oerReply.init();

reupdate = document.querySelectorAll(".boardDetail_modifyButton")
recancle = document.querySelectorAll(".boardDetail_cancle")
reedit = document.querySelectorAll("#r_reply")


reupdate.forEach((target)=>{
			target.addEventListener('click',(e)=>{
				e.preventDefault();
				editzone=(e.target.parentElement.children[6]);
				cancle=(e.target.parentElement.children[4]);
				edit_re=(e.target.parentElement.children[3]);
				
				editzone.style.display="block";
				cancle.style.display="block";
				edit_re.style.display="none";
			})
		});
		
		
recancle.forEach((target)=>{
			target.addEventListener('click',(e)=>{
				e.preventDefault();
				editzone=(e.target.parentElement.children[6]);
				cancle=(e.target.parentElement.children[4]);
				edit_re=(e.target.parentElement.children[3]);
				
				editzone.style.display="none";
				cancle.style.display="none";
				edit_re.style.display="block";
			})
		});
		
reedit.forEach((target)=>{
			target.addEventListener('click',(e)=>{
				e.preventDefault();
				this.editreply(e)
				
				
			})
		});
		
function editreply(e){
	const edit_value = (e.target.parentElement.children[1]).value;
	const id = (e.target.parentElement.children[0]).value;
	
	let data={
		content : edit_value
	}
	$.ajax({
			type:"PUT",
			url:`/api/rboardDetail/reply/`+id,
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
			//응답의 결과가 문자열이 아닌 json으로 변환
		}).done(function(resp){
			alert("수정이 완료되었습니다.");
			window.location.reload();
			//응답이 정상
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	
}