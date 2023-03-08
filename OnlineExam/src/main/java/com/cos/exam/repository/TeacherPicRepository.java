package com.cos.exam.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.exam.model.TeacherPic;

public interface TeacherPicRepository extends JpaRepository<TeacherPic, Integer>{
	Page<TeacherPic> findAll(Pageable pageable);

}
