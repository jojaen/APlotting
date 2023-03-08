package com.cos.exam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.exam.model.OEUsers;
import com.cos.exam.model.RoleType;
import com.cos.exam.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private BCryptPasswordEncoder encodeer;

	@Transactional
	public void 회원가입(OEUsers user) {
		String rawPassword = user.getPassword();
		String encPassword = encodeer.encode(rawPassword);
		user.setPassword(encPassword);
		user.setRoles(RoleType.USER);
		userRepository.save(user);
	}
	@Transactional
	public void 회원가입2(OEUsers user) {
		String rawPassword = user.getPassword();
		String encPassword = encodeer.encode(rawPassword);
		user.setPassword(encPassword);
		user.setRoles(RoleType.MANAGER);
		userRepository.save(user);
	}
	
	@Transactional
	public void 회원정보수정(OEUsers user) {
		//수정시에는 영속성 컨텍스트 USER 오브젝트를 영속화된 USER오브젝트를 수정 select를 해서 USER오브젝트를 DB로부터 가져오는 이유는 영속화를 하기 위해서이다.영속화된 오브젝트를 변경하면 자동으로 DB에 update문을 날려준다.그래서 persistance를 쓴다.
		OEUsers persistance = userRepository.findById(user.getId()).orElseThrow(()->{
			return new IllegalArgumentException("회원찾기 실패");
		});
		String email = user.getEmail();
		String userAddress = user.getUserAddress();
		String userAddressDetail = user.getUserAddressDetail();
		String name = user.getName();
		String tel = user.getTel();
		persistance.setEmail(email);
		persistance.setUserAddress(userAddress);
		persistance.setUserAddressDetail(userAddressDetail);
		persistance.setName(name);		
		persistance.setTel(tel);
		//회원수정 함수 종료시 서비스종료 트랜젝션종료 commit이 자동으로 된다.
		//영속화된 persistance객체의 변화가 감지되면 더티체킹이 되어 update문을 날려준다.
	}


	// id 중복검사
	@Transactional
	public long idCheck(String id) {
		long result = userRepository.countByUsername(id);
		return result;
	}

	// email 중복검사
	@Transactional
	public OEUsers findUserEmail(String email) {
		OEUsers user = userRepository.findByEmail(email).orElseThrow(() -> {
			return new IllegalArgumentException("회원 찾기 실패");
		});
		System.out.println("db에서 찾아온 email: " + user.getEmail());
		return user;
	}

	// id 찾기
	@Transactional
	public OEUsers findUserId(String name, String tel) {
		System.out.println("회원정보 서비스" + name + tel);
		OEUsers user = userRepository.findByNameAndTel(name, tel).orElseThrow(() -> {
			return new IllegalArgumentException("회원 찾기 실패");
		});
		return user;
	}

	// 비밀번호 찾기
	@Transactional
	public OEUsers findUserPwd(String name, String tel, String username) {
		System.out.println("회원정보 서비스" + name + tel + username);
		OEUsers user = userRepository.findByNameAndTelAndUsername(name, tel, username).orElseThrow(() -> {
			return new IllegalArgumentException("회원 찾기 실패");
		});
		return user;
	}

	// 비밀번호 리셋
	@Transactional
	public void resetUserPassword(OEUsers user) {
		OEUsers persistance = userRepository.findByEmail(user.getEmail()).orElseThrow(() -> {
			return new IllegalArgumentException("회원 찾기 실패");
		});
		String rawPassword = user.getPassword();
		String encPassword = encodeer.encode(rawPassword);
		persistance.setPassword(encPassword);

	}

}
