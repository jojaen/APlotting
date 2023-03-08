package com.cos.exam.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.exam.model.Test_Loc;

public interface test_locRepository extends JpaRepository<Test_Loc, String> {
	Page<LocInfoMapping> findByLoc1(String loc1, Pageable pageable);
}
