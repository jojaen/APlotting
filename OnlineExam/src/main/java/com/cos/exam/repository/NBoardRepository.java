package com.cos.exam.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.cos.exam.model.NBoard;

public interface NBoardRepository extends JpaRepository<NBoard, Integer>,JpaSpecificationExecutor<NBoard>{
	@Modifying
	@Query("update NBoard p set p.count = p.count + 1 where p.id = :id")
	int updateCount(int id);

}
