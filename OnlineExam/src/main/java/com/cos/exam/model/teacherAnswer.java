package com.cos.exam.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="teacherAnswer")
@SequenceGenerator(
		name = "USER_SEQ_GENERATOR6_answer"
		, sequenceName = "USER_SEQ6_answer"
		, initialValue = 1
		, allocationSize = 1
		)
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class teacherAnswer {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="USER_SEQ_GENERATOR6_answer")
	private int answerId;
	
	@Lob
	private String content;
	
	@CreationTimestamp
	private Timestamp createDate;
	
	@ManyToOne
	@JoinColumn(name="username")
	private OEUsers username;
	
	@ManyToOne
	@JoinColumn(name="questionId")
	private question questionId;

	
	


}
