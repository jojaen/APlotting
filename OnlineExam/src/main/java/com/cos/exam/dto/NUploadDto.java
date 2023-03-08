package com.cos.exam.dto;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import com.cos.exam.model.NBoard;

import lombok.Data;

@Data
public class NUploadDto {
	private MultipartFile[] file;
	private String title;
	private String content;		
	private Timestamp createTime;
	 private int count;
	
	public NBoard toEntity(String title, String content,String boardImg ,Timestamp createTime, int count) {
		
		return NBoard.builder()
				.title(title)
				.content(content)
				.boardImg(boardImg)
				.createTime(createTime)
				.count(count)
				.build();
	}	

}
