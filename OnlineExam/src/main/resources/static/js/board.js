let oerboard = {
   init: function() {
      
      $("#rboardSaveBtn").on("click", () => {
         //화살표 함수사용 이유:this를 바인딩하기 위해 사용한다.
         let title = $("#title").val();
         let content = $("#content").val();
         let setTeacher = $("option[name='선생님']:checked").val();
         let setStar = $("input[name='rating']:checked").val();
         let imgfiles = $('.files')[0].files;
         
         /*alert("title: " + title + " / content: " + content + " / setTeacher: " + setTeacher + " / setStar: " + setStar + " / imgfiles: " + imgfiles)*/
         if(title == "") {
            alert("제목을 입력해 주세요.");
         } else {
            if(content == "") {
               alert("내용을 입력해 주세요.");
            } else {
               if(setTeacher == "") {
                  alert("후기를 남길 강의를 선택해 주세요.");
               } else {
                  if(setStar == null) {
                     alert("별점을 남겨 주세요.");
                  } else {
                     this.save();
                  }
               }
            }
         }
      });
      $("#rboardUpdateaBtn").on("click", () => {
         //화살표 함수사용 이유:this를 바인딩하기 위해 사용한다.
         this.update();
      });
      $("#rboardDeleteBtn").on("click", () => {
         //화살표 함수사용 이유:this를 바인딩하기 위해 사용한다.
         this.deleteById();
      });
   },
   save: function() {
      
      
      
      let formData = new FormData();
      formData.append("title",$("#title").val()),      
      formData.append("content",$("#content").val()),
      formData.append("setTeacher",$("option[name='선생님']:checked").val()),
      formData.append("setStar",$("input[name='rating']:checked").val());
      
       let contentFiles = [];//첨부파일 배열
       let fileinput = $('.files')[0].files;//p19,p20
       for(let i = 0; i<fileinput.length; i++){
      formData.append("file",$('.files')[0].files[i])
   }
      $.ajax({
         type: "POST",
         url: "/api/rboard",
         data: formData,
         contentType: false,
         processData:false,
         enctype:"multipart/form-data",
         dataType:"text"
      }).done(function() {
         alert("글쓰기가 완료되었습니다.");
         location.href = "/board/reviewBoardList";
      }).fail(function() {
         alert("사진을 첨부해주세요.");
      });
   },
      update: function(){
      //alert('user의 save함수 호출됨');
      let id=$("#id").val();
      
      let data={
         title:$("#title").val(),
         content:$("#content").val(),
         setTeacher:$("option[name='선생님']:checked").val(),
         setStar:$("input[name='rating']:checked").val()
      };
      console.log(id);
      console.log(data);
      console.log(setTeacher);
      console.log(setStar);
      $.ajax({
         type:"PUT",
         url:"/api/rboard/"+id,
         data:JSON.stringify(data),
         contentType:"application/json; charset=utf-8",
         dataType:"json"
         //응답의 결과가 문자열이 아닌 json으로 변환
      }).done(function(resp){
         alert("수정이 완료되었습니다.");
         location.href = "/board/reviewBoardList";
         //응답이 정상
      }).fail(function(error){
         alert(JSON.stringify(error));
      });
      
   },
   
    deleteById: function(){
      var id=$("#rboardDeleteBtn").val();  //boardDetail에서 value값을 적어주고 아이디를 여기에 적어준 다음 value값을 던져줘서 된 것이다. .val()는 안에 포함된 값을 던져준다는 의미이고 text는 삭제버튼의 text값을 의미한다.
      console.log('id'+id);
          $.ajax({
         type:"DELETE",
         url:"/api/rboard/"+id,
         dataType: "json"
         //응답의 결과가 문자열이 아닌 json으로 변환
      }).done(function(resp){
         alert("삭제가 완료되었습니다.");
         location.href = "/board/reviewBoardList";
         //응답이 정상
      }).fail(function(error){
         alert(JSON.stringify(error));
         //응답이 비정상
      });
      //ajax통신을 이용해서 3개의 데이터를 json
   },
   
}

oerboard.init();



























