package com.cos.exam.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Table(name="membership")
	@Getter
	@Setter
	@AllArgsConstructor
	@Entity
	@NoArgsConstructor
	@SequenceGenerator(
			name="MEMBERSHIP_SEQ_GENERATOR"
			, sequenceName="MEMBERSHIP_SEQ"
			, initialValue =1
			, allocationSize =1
			)
public class Membership {
	@Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="MEMBERSHIP_SEQ_GENERATOR")
	
	private int id;
	
	private String subscribeName; //상품이름
	
	private String subscribePrice;   //후원금액
	
	private String payment;   //결제방식

	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="userid")
	private OEUsers users;  
	
	@CreationTimestamp
	private Timestamp createDate;
	

}
