package com.cos.exam.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OrderBy;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="nboard")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name="USER_SEQ_GENERATOR2_EXAM_NB"
		, sequenceName = "USER_SEQ2_EXAM_NB"
		, initialValue = 1
		, allocationSize = 1
		)
public class NBoard {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="USER_SEQ_GENERATOR2_EXAM_NB")
	private int id;
	
	@Column(nullable=false, length=100)
	private String title;
	
	@Lob
	private String content;
	
	
	private int count; //조회수
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="username")
	@OrderBy("id desc")
	private OEUsers username;
	
	@CreationTimestamp
	private Timestamp createTime;
	
	@Lob
	private String boardImg;


}
