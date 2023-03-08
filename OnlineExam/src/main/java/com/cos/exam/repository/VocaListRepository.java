package com.cos.exam.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.exam.model.VocaList;

public interface VocaListRepository extends JpaRepository<VocaList, Integer>{
   Page<VocaList> findAll(Pageable pageable);
}