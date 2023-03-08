package com.cos.exam.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.exam.model.teacherAnswer;

public interface answerRepository  extends JpaRepository<teacherAnswer, Integer>{

}
