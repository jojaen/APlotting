package com.cos.exam.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.cos.exam.model.OEUsers;


//jsp의 DAO
//자동으로 bean 등록


public interface UserRepository extends JpaRepository<OEUsers,Integer>, JpaSpecificationExecutor<OEUsers>{

	
	// 회원찾기 할 때 쓰이는 것이다.
	Optional<OEUsers> findByUsername(String userId);

	boolean existsByUsername(String userId);

	// id 중복검사
	Long countByUsername(String id);

	// email 중복검사
	// 이메일 검사
	Optional<OEUsers> findByEmail(String email);

	// id 찾기
	Optional<OEUsers> findByNameAndTel(String name, String tel);

	// 비밀번호 찾기
	Optional<OEUsers> findByNameAndTelAndUsername(String name, String tel, String username);
	


}
