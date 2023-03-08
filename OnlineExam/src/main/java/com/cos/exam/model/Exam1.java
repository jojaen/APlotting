package com.cos.exam.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name = "exam1")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Exam1 {
	
	@Id
	@Column(unique = true, nullable = false, length = 10)
	private int id;
	
	@Column(nullable = false, length = 200)
	private String question;
	
	@Column(nullable = false, length = 100)
	private String num1;
	
	@Column(nullable = false, length = 100)
	private String num2;
	
	@Column(nullable = false, length = 100)
	private String num3;
	
	@Column(nullable = false, length = 100)
	private String num4;
	
	@Column(nullable = false, length = 1000)
	private String solution;
	
	@Column(nullable = true, length = 50)
	private String question_content;
	
	@Column(nullable = false, length = 10)
	private String answer;

}
