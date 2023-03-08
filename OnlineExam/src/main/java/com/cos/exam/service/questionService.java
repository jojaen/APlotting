package com.cos.exam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.exam.model.OEUsers;
import com.cos.exam.model.question;
import com.cos.exam.model.teacherAnswer;
import com.cos.exam.repository.answerRepository;
import com.cos.exam.repository.questionRepository;


@Service
public class questionService {
	
	@Autowired
	private questionRepository questionRepository;
	
	@Autowired
	private answerRepository answerRepository;

	
	
	@Transactional
	public void 글쓰기(question question, OEUsers user) {
		question.setUsername(user);
		questionRepository.save(question);
	}

	
	@Transactional
	public void 답변하기(teacherAnswer answer,question question, OEUsers user) {
		answer.setUsername(user);
		answer.setAnswerId(question.getQuestionId());
		answer.setQuestionId(question);
		answerRepository.save(answer);
	}
	
	@Transactional(readOnly=true)
	public question 글상세보기(int id) {
		return questionRepository.findById(id)
				.orElseThrow(()->{
					return new IllegalArgumentException("글 상세보기 실패: 아이디를 찾을 수 없습니다.");
				});
	}
	
	@Transactional(readOnly=true)
	public Page<teacherAnswer> 답변목록(Pageable pageable) {
		return answerRepository.findAll(pageable);
	}

	
	@Transactional(readOnly=true)
	public Page<question> list(Pageable pageable) {
		return questionRepository.findAll(pageable);
	}

	

}
