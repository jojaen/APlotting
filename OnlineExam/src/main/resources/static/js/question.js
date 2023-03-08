let question={
	init: function(){
		$("#questionSave_btn").on("click",()=>{
			this.save();
		});
		$("#btn-delete").on("click",()=>{
			this.deleteById();
		});
		$("#btn-update").on("click",()=>{
			this.update();
		});
		$("#answer_save_btn").on("click",()=>{
			this.answerSave();
		})
	},
	
	save: function(){
		let data={
			content: $("#content").val(),
			subject: $("#teachersSelect").val(),
			teacher: $("#teachersSelectName").val(),
		};
			console.log("글작성"+data);
		$.ajax({
			type:"POST",
			url:"/api/questionSave",
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("글쓰기가 완료되었습니다.");
			location.href="/questionMain";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	deleteById: function() {
		var id=$("#id").val();
		var roles=$("#roles").val();
		console.log(id);
		$.ajax({
			type:"DELETE",
			url:"/api/notice/delete/"+id,
			dataType:"json"
		}).done(function(resp){
			alert("삭제가 완료되었습니다.");
			location.href="/auth/news/"+roles;
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	update: function(){
		let id=$("#id").val();
		
		let data={
			title: $("#title").val(),
			content: $("#content").val()
		};
		$.ajax({
			type:"PUT",
			url:"/api/notice/"+id,
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("수정이 완료되었습니다.");
			location.href="/news/"+id;
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
	answerSave: function(){
		let answerId=$("#questionId").val();
		let data={
			content: $("#answerContent").val(),
		};
			console.log("글작성"+data);
		$.ajax({
			type:"POST",
			url:"/api/answerSave/"+answerId,
			data:JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"
		}).done(function(resp){
			alert("글쓰기가 완료되었습니다.");
			location.href="/questionMain";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
	},
	
}
question.init();