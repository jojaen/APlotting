package com.cos.exam.dto;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import com.cos.exam.model.Board;

import lombok.Data;

@Data
public class UploadDto {
	private MultipartFile[] file;
	private String title;
	private String content;		
	private String setTeacher;
	private int setStar;
	private Timestamp createTime;
	private int count;

	
	public Board toEntity(String title, String content,String setTeacher,String boardImg ,int setStar,Timestamp createTime, int count) {
		return Board.builder()
				.title(title)
				.content(content)
				.setTeacher(setTeacher)
				.setStar(setStar)
				.boardImg(boardImg)
				.createTime(createTime)
				.count(count)
				.build();
	}

}
