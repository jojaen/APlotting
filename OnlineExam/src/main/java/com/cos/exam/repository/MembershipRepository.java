package com.cos.exam.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.exam.model.Membership;

public interface MembershipRepository extends JpaRepository<Membership, Integer>  {

}
