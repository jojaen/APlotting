package com.cos.exam.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.cos.exam.repository.answerRepository;
import com.cos.exam.service.questionService;

@Controller
public class questionController {
	
	@Autowired
	private questionService questionService;
	
	@Autowired
	private answerRepository answerRepository;
	
		@GetMapping("/questionMain")
		public String questionMain(Model model,
				@PageableDefault(size = 6, sort = "questionId", direction = Sort.Direction.DESC) Pageable pageable) {
			model.addAttribute("question", questionService.list(pageable));
			model.addAttribute("answer", answerRepository.findAll());
//			model.addAttribute("answer", questionService.답변목록(pageable));
			return "/question/questionList";
		}
		
		@GetMapping("/questionMain2")
		public String Noanswer(Model model,
				@PageableDefault(size = 6, sort = "questionId", direction = Sort.Direction.DESC) Pageable pageable) {
			model.addAttribute("question", questionService.list(pageable));
//			model.addAttribute("answer", questionService.답변목록(pageable));
			return "/question/NoanswerquestionList";
		}
		
		
		@GetMapping("/question")
		public String questionList() {
			return "/question/questionList";
		}
		
		@GetMapping("/questionSave")
		public String questionSave() {
			return "/question/questionSaveForm";
		}
		
		@GetMapping("/answerSaveForm/{questionId}")
		public String findById(@PathVariable int questionId, Model model) {
			model.addAttribute("answer",questionId);
			return "/question/answerSaveForm";
		}
		
		

}
