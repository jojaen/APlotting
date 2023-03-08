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

import com.cos.exam.dto.UploadDto;
import com.cos.exam.model.Board;
import com.cos.exam.model.OEUsers;
import com.cos.exam.model.Reply;
import com.cos.exam.repository.RBoardRepository;
import com.cos.exam.repository.ReplyRepository;

@Service
public class ReviewBoardService {
	

	private RBoardRepository boardRepository;

	@Autowired
	public ReviewBoardService(RBoardRepository boardRepository) {
		super();
		this.boardRepository = boardRepository;
	}
	
	@Autowired
	private ReplyRepository replyRepository;
	
	@Transactional(readOnly=true)
	public Page<Board> list(Pageable pageable){
		return boardRepository.findAll(pageable);
	}
	
	@Transactional
	public boolean 리뷰쓰기(UploadDto boarduploadDto,OEUsers user) {
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
			
			 Board board = boarduploadDto.toEntity(boarduploadDto.getTitle(),boarduploadDto.getContent(),boarduploadDto.getSetTeacher(),
			 builder.toString(),boarduploadDto.getSetStar(), boarduploadDto.getCreateTime(), boarduploadDto.getCount());
			 board.setUsername(user);
			 boardRepository.save(board);

			return true;

		}
		else {
			StringBuilder builder = new StringBuilder();
			
			 Board board = boarduploadDto.toEntity(boarduploadDto.getTitle(),boarduploadDto.getContent(),boarduploadDto.getSetTeacher(),
			 builder.toString(),boarduploadDto.getSetStar(), boarduploadDto.getCreateTime(), boarduploadDto.getCount());
			 board.setUsername(user);
			 boardRepository.save(board);
			return true;
		}
		// 유저정보 가져오기
			}
	@Transactional(readOnly=true)
	public Page<Board> 리뷰목록(Pageable pageable) {
		return boardRepository.findAll(pageable);
	}
	
	@Transactional(readOnly=true)  
	public Board 리뷰보기(int id) {
		return boardRepository.findById(id).orElseThrow(()->{
		return new IllegalIdentifierException("굴 상세보기 실패: 아이디를 찾을 수 없습니다.");
	});
	}
		
	@Transactional
	public void 리뷰수정(int id,Board requestBoard) {
		Board board = boardRepository.findById(id).orElseThrow(()->{
			return new IllegalArgumentException("글 찾기 실패 아이디를 찾을 수 없습니다.");
		});
		board.setTitle(requestBoard.getTitle());
		board.setContent(requestBoard.getContent());
	}
	
	@Transactional
	public void 리뷰삭제(int id) {
		boardRepository.deleteById(id);
	}

//	//  //	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//	//
	
	
	@Transactional
	public void 댓글쓰기(OEUsers user,int boardId,Reply requestReply) {
		System.out.println("댓글 확인"+requestReply.getContent());
		
		Board board=boardRepository.findById(boardId).orElseThrow(()->{
			return new IllegalArgumentException("댓글쓰기 실패: 게시글 아이디를 찾을 수 없습니다.");
		});
		
		requestReply.setUsername(user);  //여기에 오브젝트를 넣어준것이다.
		requestReply.setBoard(board);  //여기에 오브젝트를 넣어준것이다.
		
		replyRepository.save(requestReply);
	}
	
	@Transactional
	public void 댓글수정(int replyId,Reply requestReply) {
		Reply reply=replyRepository.findById(replyId).orElseThrow(()->{
			return new IllegalArgumentException("댓글수정 실패: 게시글 아이디를 찾을 수 없습니다."+replyId);
		});
		reply.setContent(requestReply.getContent());
	}
	
	@Transactional
	public void 댓글삭제(int replyId) {
		replyRepository.deleteById(replyId);
	}
	
	// 조회수 증가 기능
		@Transactional
		public void updateCount(int id) {
			// TODO Auto-generated method stub
			boardRepository.updateCount(id);
		}

	
}
