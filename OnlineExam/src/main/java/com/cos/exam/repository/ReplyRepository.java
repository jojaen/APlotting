package com.cos.exam.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.exam.model.Reply;

public interface ReplyRepository  extends JpaRepository<Reply, Integer> {

}
