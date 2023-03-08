package com.cos.exam.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="oeuploadfiles")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder //빌더 패턴
@Entity
@SequenceGenerator(
		name = "USER_SEQ_GENERATOR_EXAM_OEF"
	    , sequenceName = "USER_SEQ_EXAM_OEF"
	    , initialValue = 1
	    , allocationSize = 1
	)
public class OEUploadFiles {
	@Id //기본키
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="USER_SEQ_GENERATOR_EXAM_OEF")
	private int id;
	@OneToOne
	@JoinColumn(name="userId")
	private OEUsers oeuser;
	
	private String uploadFileName;
	private String dbFileName;
	
}