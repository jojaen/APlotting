package com.cos.exam.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import com.cos.exam.model.Board;
import com.cos.exam.model.question;

@Repository
public interface questionRepository extends JpaRepository<question,Integer>,JpaSpecificationExecutor<question>{

}
