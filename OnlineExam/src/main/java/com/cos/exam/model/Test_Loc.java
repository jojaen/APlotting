package com.cos.exam.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name = "test_loc")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class Test_Loc {
	@Id
	@Column(unique = true, nullable = false, length = 10)
	private int id;
	
	@Column(nullable = false, length = 50)
	private String loc1;

	@Column(nullable = false, length = 200)
	private String loc2;
}
