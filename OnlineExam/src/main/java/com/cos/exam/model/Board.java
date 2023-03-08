package com.cos.exam.model;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Table(name="board")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@SequenceGenerator(
		name="USER_SEQ_GENERATOR2_EXAM_RB"
		, sequenceName = "USER_SEQ2_EXAM_RB"
		, initialValue = 1
		, allocationSize = 1
		)
public class Board {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="USER_SEQ_GENERATOR2_EXAM_RB")
	private int id;
	
	@Column(nullable=false, length=100)
	private String title;
	
	@Lob
	private String content;
	
	private int count; //조회수
	
	@Column( length=100)
	private String setTeacher;
	
	@Column( length=100)
	private int setStar;
	
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="username")
	@OrderBy("id desc")
	private OEUsers username;
	
	@OneToMany(mappedBy = "board",fetch=FetchType.EAGER,cascade=CascadeType.REMOVE)
	@JsonIgnoreProperties({"board"})  //무한참조를 하지 않게 하기 위해서 쓴다. reply의 board를 또 호출하지 않게 한다.
	private List<Reply> reply;
	
	@CreationTimestamp
	private Timestamp createTime;
	
	@Lob
	private String boardImg;
	
	


}
