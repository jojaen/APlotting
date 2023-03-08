package com.cos.exam.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.exam.model.Exam2;

public interface Exam2Repository extends JpaRepository<Exam2, Integer> {
	Page<Exam2> findAll(Pageable pageable);

	Optional<Exam2> findById(int id);
}
