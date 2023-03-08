package com.cos.exam.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.exam.model.Exam1;
import com.cos.exam.model.Exam2;
import com.cos.exam.repository.Exam1Repository;
import com.cos.exam.repository.Exam2Repository;
@Component
@Service
public class ExamService {
	
	@Autowired
	private Exam1Repository exam1Repository;
	
	@Transactional(readOnly = true)
	public Page<Exam1> 시험1(Pageable pageable) {
		Page<Exam1> exam1 = exam1Repository.findAll(pageable);
		return exam1;
	}
	
	@Autowired
	private Exam2Repository exam2Repository;
	
	@Transactional(readOnly = true)
	public Page<Exam2> 시험2(Pageable pageable) {
		Page<Exam2> exam2 = exam2Repository.findAll(pageable);
		return exam2;
	}
	
	@Transactional(readOnly = true)
	public Optional<Exam1> 모의고사1_1(int id) {
		return exam1Repository.findById(id);
	}
	@Transactional(readOnly = true)
	public Optional<Exam2> 모의고사1_2(int id) {
		return exam2Repository.findById(id);
	}
	
}
