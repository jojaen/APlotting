package com.cos.exam.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="teacherPic")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class TeacherPic {
	@Id
	@Column(unique = true, nullable = false, length=10)
	private int id;
	
	@Column(nullable = false, length=100)
	private String name;
	
	@Column(nullable = false, length=200)
	private String content;
	

}
