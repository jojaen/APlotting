package com.cos.exam.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.exam.model.Exam1;

public interface Exam1Repository extends JpaRepository<Exam1, Integer> {
	Page<Exam1> findAll(Pageable pageable);
	
	Optional<Exam1> findById(int id);
	
}
