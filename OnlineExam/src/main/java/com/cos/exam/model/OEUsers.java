package com.cos.exam.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="oeusers")
@SequenceGenerator(
		name = "OEUSERS_SEQ_GENERATOR_EXAM_OEUSERS"
		, sequenceName = "USERS_SEQ_EXAM_OEUSERS"
		, initialValue = 1
		, allocationSize = 1
		)
@Data//getter,setter,tostring
@AllArgsConstructor//여기 필드의 모든 생성자
@NoArgsConstructor//기본생성자
@Builder //빌더 패턴
@Entity //Users 클래스가 자동으로 DB에 테이블이 생성이 된다.
//@DynamicInsert //insert시에 null인 필드 제외
public class OEUsers {
	@Id //primary key
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="OEUSERS_SEQ_GENERATOR_EXAM_OEUSERS")
	private int id;//시퀀스

	//로그인 방식 확인
	private String oauth;
	
	@Column(length=100,unique = true)
	private String username;//아이디

	@Column( length=100)//해쉬로 변경하여 암호화 length 크게
	private String password; 
	
	@Column(length=20)
	private String name;

	@Column( length=20)
	private String tel;
	
	@Column( length=50)
	private String email;
	
	@Column(nullable=false, length=10)
	private String signUpAgree;

	@Column( length=100)
	private String userAddress;
	
	@Column( length=100)
	private String userAddressDetail;
	
	//@ColumnDefault("'user'")
	@Enumerated(EnumType.STRING)
	private RoleType roles; //Enum을 쓰는게 좋다. //도메인 사용해야해서. 
	//예) admin, user, manager (권한) 셋 중 하나만 
	@CreationTimestamp //시간이 자동으로 입력
	private Timestamp createDate;
}
