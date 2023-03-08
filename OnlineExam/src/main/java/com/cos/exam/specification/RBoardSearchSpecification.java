package com.cos.exam.specification;

import org.springframework.data.jpa.domain.Specification;

import com.cos.exam.model.Board;

public class RBoardSearchSpecification {
	
	public static Specification<Board> searchTitle(String title) {//users의 gender와 genSelect 비교
		return (root, query, criteriaBuilder) -> criteriaBuilder.like(root.get("title"), "%" + title + "%");
    }
	public static Specification<Board> searchContent(String content) {//users의 gender와 genSelect 비교
		return (root, query, criteriaBuilder) -> criteriaBuilder.like(root.get("content"), "%" + content + "%");
    }
	public static Specification<Board> searchUsers(String users) {//users의 gender와 genSelect 비교
		return (root, query, criteriaBuilder) -> criteriaBuilder.like(root.get("users"), "%" + users + "%");
	}
	
}
