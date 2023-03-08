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
import com.cos.exam.dto.NUploadDto;
import com.cos.exam.dto.ResponseDto;
import com.cos.exam.model.NBoard;
import com.cos.exam.service.NoticeBoardService;

@RestController
public class NoticeBoardApiController {
	
	@Autowired
	private NoticeBoardService boardService;
	
	@PostMapping("/api/nboard")
	public ResponseEntity<String> Upload(NUploadDto boardUploadDto, @AuthenticationPrincipal PrincipalDetail principal){
		System.out.println("api/nboard 호출 "+ boardUploadDto.getTitle());
		boardService.공지쓰기(boardUploadDto, principal.getUser());
		return ResponseEntity.ok().body("api호출");
	}
	
	@DeleteMapping("/api/nboard/{id}")
	public ResponseDto<Integer> deleteById(@PathVariable int id){
		boardService.공지삭제(id);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	@PutMapping("/api/nboard/{id}")
	public ResponseDto<Integer> update(@PathVariable int id, @RequestBody NBoard board){
		boardService.공지수정(id,board);
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
}
