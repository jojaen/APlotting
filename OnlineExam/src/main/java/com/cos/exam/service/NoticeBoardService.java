package com.cos.exam.service;

import java.io.File;
import java.nio.file.Paths;
import java.util.UUID;

import org.hibernate.boot.model.naming.IllegalIdentifierException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.cos.exam.dto.NUploadDto;
import com.cos.exam.model.NBoard;
import com.cos.exam.model.OEUsers;
import com.cos.exam.repository.NBoardRepository;

@Service
public class NoticeBoardService {
	
	private NBoardRepository boardRepository;
	
	@Autowired
	public NoticeBoardService(NBoardRepository boardRepository) {
		super();
		this.boardRepository = boardRepository;
	}
	
	@Transactional
	public boolean 공지쓰기(NUploadDto boarduploadDto,OEUsers user) {
			boarduploadDto.setCount(0);
		if(boarduploadDto.getFile()!=null) {
			String osName = System.getProperty("os.name");
			String userName = System.getProperty("user.name");
			String uploadPath = "";

			// 파일경로 생성
			if (osName.contains("Windows")) {
				 uploadPath = Paths.get("C:/Users",userName, "images", "image").toString();
			} else {
				return false;
			}
			File dir = new File(uploadPath);
			dir.mkdirs();

			MultipartFile[] file = boarduploadDto.getFile();

			
			UUID uuid = UUID.randomUUID();
			
			String[] ImageName = new String[file.length];
			for(int i=0; i<file.length; i++) {
				ImageName[i] = uuid + "_" + file[i].getOriginalFilename();
				System.out.println(ImageName[i]);
			}
			
			for(int i=0; i<file.length; i++) {
				 try { File target = new File(uploadPath, ImageName[i]);
				 file[i].transferTo(target); 
				 } catch(Exception e) { 
					 return true; }
			}
			
			StringBuilder builder = new StringBuilder();
			for(String str : ImageName) {
				builder.append(str + "/");
			}
			builder.delete(builder.length()-1, builder.length());
			
			 NBoard board = boarduploadDto.toEntity(boarduploadDto.getTitle(),boarduploadDto.getContent(),
			 builder.toString(), boarduploadDto.getCreateTime(),boarduploadDto.getCount());
			 board.setUsername(user);
			 boardRepository.save(board);

			return true;

		}
		else {
			StringBuilder builder = new StringBuilder();
			
			 NBoard board = boarduploadDto.toEntity(boarduploadDto.getTitle(),boarduploadDto.getContent(),
			 builder.toString(), boarduploadDto.getCreateTime(),boarduploadDto.getCount());
			 board.setUsername(user);
			 boardRepository.save(board);
			return true;
		}
		// 유저정보 가져오기
			}
	@Transactional(readOnly=true)
	public Page<NBoard> 공지목록(Pageable pageable) {
		return boardRepository.findAll(pageable);
	}
	
	@Transactional(readOnly=true)  
	public NBoard 공지보기(int id) {
		return boardRepository.findById(id).orElseThrow(()->{
		return new IllegalIdentifierException("굴 상세보기 실패: 아이디를 찾을 수 없습니다.");
	});
	}
		
	@Transactional
	public void 공지수정(int id,NBoard requestBoard) {
		NBoard board = boardRepository.findById(id).orElseThrow(()->{
			return new IllegalArgumentException("글 찾기 실패 아이디를 찾을 수 없습니다.");
		});
		board.setTitle(requestBoard.getTitle());
		board.setContent(requestBoard.getContent());
	}
	
	@Transactional
	public void 공지삭제(int id) {
		boardRepository.deleteById(id);
	}
	
	// 조회수 증가 기능
	@Transactional
	public void updateCount(int id) {
		// TODO Auto-generated method stub
		boardRepository.updateCount(id);
	}


}
