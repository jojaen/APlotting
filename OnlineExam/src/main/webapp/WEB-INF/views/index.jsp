<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="layout/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- Notice, QNA board -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


<!-- Service_image Fade in -->

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

<!-- 메인페이지 배너 -->

<div id="banner">
	<img class="bannerimg" src="/image/banner3.jpg"> <img
		class="bannerimg" src="/image/banner4.jpg">
</div>


<!-- 공지사항, 수강후기 게시판 -->

<div class="exam_board">
	<div class="container mt-3" id="version_mo_ta">

		<!-- Nav tabs -->
		<ul class="nav nav-tabs">

			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#menu1">공지사항</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#menu2">수강후기</a></li>
				
				<li class="view_more2">더보기&nbsp;<i class="fa-solid fa-plus"></i>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<div id="menu1" class="container tab-pane active">
			
				<br>
				<ul class="notice">
					<c:forEach var="nboard" items="${nboard.content}">
						<li><i class="fa-solid fa-volume-high"></i>&nbsp;<a
							href="/nboard/${nboard.id}">${nboard.title}</a></li>
					</c:forEach>
				</ul>
			</div>
			<div id="menu2" class="container tab-pane fade">
				<br>
				<ul class="qna">
					<c:forEach var="rboard" items="${board.content}">
						<li><i class="fa-solid fa-star"></i>&nbsp;<a
							href="/board/${rboard.id}">${rboard.title}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>

	<div class="container mt-3" id="version_pc">

		<!-- Nav tabs -->
		<div class="board_section1">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#">공지사항</a></li>
				<li class="board_more"><a href="/nboard/noticeBoardList"
					class="board_more_a">더보기&nbsp;<i class="fa-solid fa-plus"></i>
				</a></li>

			</ul>
			<div class="tab-content">
				<div id="menu1" class="container tab-pane active">
					<br>
					<ul class="notice">
					<c:forEach var="nboard" items="${nboard.content}">
						<li><i class="fa-solid fa-volume-high"></i>&nbsp;<a
							href="/nboard/${nboard.id}">${nboard.title}</a></li>
					</c:forEach>
					</ul>

				</div>
			</div>
		</div>

		<!-- Tab panes -->
		<div class="board_section2">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a href="#" class="nav-link active"
					data-toggle="tab">수강후기</a></li>
				<li class="board_more"><a href="/board/reviewBoardList" class="board_more_a">더보기&nbsp;<i
						class="fa-solid fa-plus"></i>
				</a></li>
			</ul>

			<div class="tab-content">
				<div id="menu2" class="container tab-pane active">
					<br>
					<ul class="qna">
					<c:forEach var="rboard" items="${board.content}">
						<li><i class="fa-solid fa-star"></i>&nbsp;<a
							href="/board/${rboard.id}">${rboard.title}</a></li>
					</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- Service -->

<div class="exam_section3">
	<h3 class="service">Service</h3>

	<div class="exam_service">
		<div class="service_section">
			<div data-aos="flip-right" data-aos-duration="2000">
				<img src="image/test.png" class="service_image">
			</div>
			<h4 class="service_title">기출문제&amp;모의고사</h4>
			<p class="service_contents">
				시험에 출제된 회차별 기출문제 풀이<br>&amp;<br>과년도 기출문제 중 랜덤한 문제를 출제
			</p>
		</div>

		<div class="service_section">
			<div data-aos="flip-right" data-aos-duration="2000">
				<img src="image/dictionary.png" class="service_image">
			</div>
			<h4 class="service_title">단어장</h4>
			<p class="service_contents">
				시험에 자주 출제되는 <br>용어 풀이 및 정리
			</p>
		</div>

		<div class="service_section">
			<div data-aos="flip-right" data-aos-duration="2000">
				<img src="image/map.png" class="service_image">
			</div>
			<h4 class="service_title">접수안내</h4>
			<p class="service_contents">
				지역별 고사장 확인 및<br> 접수방법 안내
			</p>
		</div>

	</div>
</div>
<!-- PC version 참고영상 div -->
<div class="exam_section4">
	<h3 class="data_text">참고자료</h3>
	<div class="data_section">

		<div class="data_01">
			<a data-toggle="modal" data-target="#myModal1">
				<figure>
					<img src="/image/reference01.png" alt="image" class="data_image">
					<figcaption>
						<span class="detail_show">자세히 보기</span>
					</figcaption>
				</figure>
			</a>
		</div>

		<div class="data_02">
			<a data-toggle="modal" data-target="#myModal2">
				<figure>
					<img src="/image/reference02.png" alt="image" class="data_image">
					<figcaption>
						<span class="detail_show">자세히 보기</span>
					</figcaption>
				</figure>
			</a>
		</div>

		<div class="data_03">
			<a data-toggle="modal" data-target="#myModal3">
				<figure>
					<img src="/image/reference03.png" alt="image" class="data_image">
					<figcaption>
						<span class="detail_show">자세히 보기</span>
					</figcaption>
				</figure>
			</a>
		</div>

	</div>

	<div class="container">
		<!-- The Modal -->

		<div class="modal fade" id="myModal1">
			<div class="modal-dialog modal-xl">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title"></h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body"></div>

				</div>
			</div>
		</div>

		<div class="modal fade" id="myModal2">
			<div class="modal-dialog modal-xl">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title"></h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body"></div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="myModal3">
			<div class="modal-dialog modal-xl">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title"></h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body"></div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="/js/banner.js"></script>

<script>
	AOS.init();
</script>
<%@ include file="layout/footer.jsp"%>