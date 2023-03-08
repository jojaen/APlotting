package com.cos.exam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.exam.model.Membership;
import com.cos.exam.model.OEUsers;
import com.cos.exam.repository.MembershipRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor 
@Service
public class MembershipService {
	@Autowired
	private MembershipRepository membershipRepository;
	
	@Transactional
	public void 구매하기(Membership membership, OEUsers user) {
		Membership memberships = new Membership();
		memberships.setSubscribeName(membership.getSubscribeName());
		memberships.setSubscribePrice(membership.getSubscribePrice());
		memberships.setPayment(membership.getPayment());
		memberships.setUsers(user);
		membershipRepository.save(memberships);
		
	}
	

	/*
	 * @Transactional(readOnly=true) public Membership 구매내역보기(@PathVariable int id)
	 * { return membershipRepository.findById(id).orElseThrow(()->{ return new
	 * IllegalIdentifierException("상세보기 실패: 아이디를 찾을 수 없습니다."); }); }
	 */
	
	@Transactional
	public List<Membership>구매내역보기(){
		return membershipRepository.findAll();
	}
}
