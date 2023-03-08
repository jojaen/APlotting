package com.cos.exam.service;

import org.hibernate.boot.model.naming.IllegalIdentifierException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.exam.model.TeacherPic;
import com.cos.exam.repository.TeacherPicRepository;

@Service
public class TeacherPicService {
	@Autowired
	private TeacherPicRepository teacherPicRepository;

	@Transactional(readOnly = true)
	public TeacherPic 선생님사진보기(int id) {
		return teacherPicRepository.findById(id).orElseThrow(() -> {
			return new IllegalIdentifierException("사진송출 실패: 아이디를 찾을 수 없습니다.");
		});
	}
}
