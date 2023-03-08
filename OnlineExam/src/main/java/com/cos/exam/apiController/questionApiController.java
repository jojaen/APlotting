package com.cos.exam.apiController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.exam.config.auth.PrincipalDetail;
import com.cos.exam.dto.ResponseDto;
import com.cos.exam.model.question;
import com.cos.exam.model.teacherAnswer;
import com.cos.exam.service.questionService;


@RestController
public class questionApiController {
	
	@Autowired
	private questionService questionService;
	
	@PostMapping("/api/questionSave")
	public ResponseDto<Integer> save(@RequestBody question question, @AuthenticationPrincipal PrincipalDetail principal) {
		questionService.글쓰기(question, principal.getUser());
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	
	@PostMapping("/api/answerSave/{questionId}")
	public ResponseDto<Integer> save(@RequestBody teacherAnswer answer,@PathVariable int questionId,  @AuthenticationPrincipal PrincipalDetail principal) {
		question question = questionService.글상세보기(questionId);
		
		questionService.답변하기(answer, question, principal.getUser());
		return new ResponseDto<Integer>(HttpStatus.OK.value(),1);
	}
	

}
