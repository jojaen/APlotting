package com.cos.exam.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.cos.exam.model.Board;

public interface RBoardRepository  extends JpaRepository<Board, Integer>,JpaSpecificationExecutor<Board>{
	@Modifying
	@Query("update Board p set p.count = p.count + 1 where p.id = :id")
	int updateCount(int id);

}
