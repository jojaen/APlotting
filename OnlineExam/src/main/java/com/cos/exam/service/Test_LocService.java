package com.cos.exam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.exam.repository.LocInfoMapping;
import com.cos.exam.repository.test_locRepository;

@Component
@Service
public class Test_LocService {
	String str1 = "강원";
	String str2 = "경기";
	String str3 = "경남";
	String str4 = "경북";
	String str5 = "광주";
	String str6 = "대구";
	String str7 = "대전";
	String str8 = "부산";
	String str9 = "서울";
	String str10 = "세종";
	String str11 = "울산";
	String str12 = "인천";
	String str13 = "전남";
	String str14 = "전북";
	String str15 = "제주";
	String str16 = "충남";
	String str17 = "충북";
	
	@Autowired
	private test_locRepository locRepository;
	
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_강원(Pageable pageable) {
		Page<LocInfoMapping> gangwon = locRepository.findByLoc1(str1, pageable);

		return gangwon;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_경기(Pageable pageable) {
		Page<LocInfoMapping> gyeonggi = locRepository.findByLoc1(str2, pageable);

		return gyeonggi;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_경남(Pageable pageable) {
		Page<LocInfoMapping> gyeongsang_south = locRepository.findByLoc1(str3, pageable);

		return gyeongsang_south;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_경북(Pageable pageable) {
		Page<LocInfoMapping> gyeongsang_north = locRepository.findByLoc1(str4, pageable);

		return gyeongsang_north;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_광주(Pageable pageable) {
		Page<LocInfoMapping> gwangju = locRepository.findByLoc1(str5, pageable);

		return gwangju;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_대구(Pageable pageable) {
		Page<LocInfoMapping> daegu = locRepository.findByLoc1(str6, pageable);

		return daegu;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_대전(Pageable pageable) {
		Page<LocInfoMapping> daejeon = locRepository.findByLoc1(str7, pageable);

		return daejeon;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_부산(Pageable pageable) {
		Page<LocInfoMapping> busan = locRepository.findByLoc1(str8, pageable);

		return busan;
	}
	
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_서울(Pageable pageable) {
		Page<LocInfoMapping> seoul = locRepository.findByLoc1(str9, pageable);

		return seoul;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_세종(Pageable pageable) {
		Page<LocInfoMapping> sejong = locRepository.findByLoc1(str10, pageable);

		return sejong;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_울산(Pageable pageable) {
		Page<LocInfoMapping> ulsan = locRepository.findByLoc1(str11, pageable);

		return ulsan;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_인천(Pageable pageable) {
		Page<LocInfoMapping> incheon = locRepository.findByLoc1(str12, pageable);

		return incheon;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_전남(Pageable pageable) {
		Page<LocInfoMapping> jeolla_south = locRepository.findByLoc1(str13, pageable);

		return jeolla_south;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_전북(Pageable pageable) {
		Page<LocInfoMapping> jeolla_north = locRepository.findByLoc1(str14, pageable);

		return jeolla_north;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_제주(Pageable pageable) {
		Page<LocInfoMapping> jeju = locRepository.findByLoc1(str15, pageable);

		return jeju;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_충남(Pageable pageable) {
		Page<LocInfoMapping> chungcheong_south = locRepository.findByLoc1(str16, pageable);

		return chungcheong_south;
	}
	@Transactional(readOnly = true)
	public Page<LocInfoMapping> 고사장_충북(Pageable pageable) {
		Page<LocInfoMapping> chungcheong_north = locRepository.findByLoc1(str17, pageable);

		return chungcheong_north;
	}
}
