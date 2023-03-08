package com.cos.exam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.exam.model.VocaList;
import com.cos.exam.repository.VocaListRepository;

@Component
@Service
public class VocaListService {
	@Autowired
	private VocaListRepository vocaListRepository;

	@Transactional(readOnly = true)
	public Page<VocaList> 단어장(Pageable pageable) {
		Page<VocaList> vocalist = vocaListRepository.findAll(pageable);
		return vocalist;
	}
}