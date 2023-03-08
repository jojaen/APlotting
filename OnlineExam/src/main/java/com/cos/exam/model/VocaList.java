package com.cos.exam.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name = "VocaList")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
public class VocaList {
	@Id
	@Column(unique = true, nullable = false, length = 10)
	private int id;

	@Column(nullable = false, length = 50)
	private String word;

	@Column(nullable = false, length = 200)
	private String mean;
}