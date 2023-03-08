package com.cos.exam.apiController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.exam.config.auth.PrincipalDetail;
import com.cos.exam.dto.ResponseDto;
import com.cos.exam.dto.UploadDto;
import com.cos.exam.model.Board;
import com.cos.exam.model.Reply;
import com.cos.exam.service.ReviewBoardService;

@RestController
public class ReviewBoardApiController {
	@Autowired
	private ReviewBoardService boardService;
	
	@PostMapping("/api/rboard")
	public ResponseEntity<String> Upload(UploadDto boardUploadDto, @AuthenticationPrincipal PrincipalDetail principal){
		System.out.println("api/rboard 호출 "+ boardUploadDto.getTitle());
		boardService.리뷰쓰기(boardUploadDto, principal.getUser());
		return ResponseEntity.ok().body("api호출");
	}
	
	@DeleteMapping("/api/rboard/{id}")
	public ResponseDto<Integer> deleteById(@PathVariable int id){
		boardService.리뷰삭제(id);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	@PutMapping("/api/rboard/{id}")
	public ResponseDto<Integer> update(@PathVariable int id, @RequestBody Board board){
		boardService.리뷰수정(id,board);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	
	//데이터를 받을 때 컨트롤러에서 dto를 만들어서 받는게 좋다. dto사용하지 않는 이유는
	//그리고 	@AuthenticationPrincipal PrincipalDetail principal 는 누가 썼는지 알아야 하기에 필요한 것이다.			
	@PostMapping("/api/rboard/{boardId}/reply")      //requestBody에서 reply는 replymodel 에서 content 200자가 담길 것이다. 
	public ResponseDto<Integer> replySave(@PathVariable int boardId,  @RequestBody Reply reply, @AuthenticationPrincipal PrincipalDetail principal){
		/* System.out.println("api댓글 호출"+reply.getContent()); */
		boardService.댓글쓰기(principal.getUser(), boardId , reply ); //유저 오브젝트와 보드 아이디,댓글컨텐트를 넘긴다는 의미이다.
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	
	@PutMapping("/api/rboardDetail/reply/{replyId}")   //api에 board에 boardId 의 reply에 replyId를 삭제할거라는 뜻이다. boardId는 주소를 만들기 위해 쓴것이다.
	public ResponseDto<Integer>replyUpdate(@PathVariable int replyId ,@RequestBody Reply requestReply){   
    boardService.댓글수정(replyId,requestReply);	
	return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	@DeleteMapping("/api/rboardDetail/{boardId}/reply/{replyId}")   //api에 board에 boardId 의 reply에 replyId를 삭제할거라는 뜻이다. boardId는 주소를 만들기 위해 쓴것이다.
	public ResponseDto<Integer>replyDelete(@PathVariable int replyId){   //replyId만 있으면 삭제가 되기에 replyId만 쓴것.
	boardService.댓글삭제(replyId);	
	return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
}
