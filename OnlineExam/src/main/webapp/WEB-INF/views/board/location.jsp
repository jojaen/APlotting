<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<script src="https://kit.fontawesome.com/983b1b1bfd.js"
	crossorigin="anonymous"></script>

<body onload="changeSel();">
	<div id="submenu_loc">
		<%@ include file="../layout/submenu2.jsp"%>
	</div>
	<div id="container_loc">
		<div id="param_location" style="display: none;">${location}</div>
		<div id="container_test_loc">
			<div id="container_test_loc_div">

				<h3>고사장 위치 조회</h3>
				<div id="test_loc_select">
					<div id="test_loc_select_div">
						<div id="test_loc_map_icon">
							<img alt="map_icon" src="/image/map_icon.png">
						</div>
						<div id="test_loc_map_select_box">
							<p>지역을 선택해주세요.</p>
							<select id="location" name="test_loc" onchange="changeFn()">
								<option name="test_loc" value="none" selected="selected">선택해주세요.</option>
								<option name="test_loc" value="gangwon">강원</option>
								<option name="test_loc" value="gyeonggi">경기</option>
								<option name="test_loc" value="gyeongsang_south">경상남도</option>
								<option name="test_loc" value="gyeongsang_north">경상북도</option>
								<option name="test_loc" value="gwangju">광주</option>
								<option name="test_loc" value="daegu">대구</option>
								<option name="test_loc" value="daejeon">대전</option>
								<option name="test_loc" value="busan">부산</option>
								<option name="test_loc" value="seoul">서울</option>
								<option name="test_loc" value="sejong">세종</option>
								<option name="test_loc" value="ulsan">울산</option>
								<option name="test_loc" value="incheon">인천</option>
								<option name="test_loc" value="jeolla_south">전라남도</option>
								<option name="test_loc" value="jeolla_north">전라북도</option>
								<option name="test_loc" value="jeju">제주도</option>
								<option name="test_loc" value="chungcheong_south">충청남도</option>
								<option name="test_loc" value="chungcheong_north">충청북도</option>
							</select>
						</div>
					</div>
				</div>

				<div>
					<div id="gangwon" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc1" items="${loc1.content}">

								<tbody>
									<tr>
										<td>${loc1.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>

						</table>
						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc1.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc1.number-1}&loc2=gangwon">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn" href="?page=${loc1.number-1}&loc2=gangwon">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc1.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc1.number}&loc2=gangwon">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn" href="?page=${loc1.number+1}&loc2=gangwon">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="gyeonggi" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc" items="${loc2.content}">

								<tbody>
									<tr>
										<td>${loc.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc2.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc2.number-1}&loc2=gyeonggi">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn" href="?page=${loc2.number-1}&loc2=gyeonggi">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc2.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc2.number}&loc2=gyeonggi">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn" href="?page=${loc2.number+1}&loc2=gyeonggi">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>

					</div>
					<div id="gyeongsang_south" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc3" items="${loc3.content}">

								<tbody>
									<tr>
										<td>${loc3.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc2.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc2.number-1}&loc2=gyeongsang_south">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn"
											href="?page=${loc2.number-1}&loc2=gyeongsang_south">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc2.number == 1}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc2.number}&loc2=gyeongsang_south">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn"
											href="?page=${loc2.number+1}&loc2=gyeongsang_south">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="gyeongsang_north" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc4" items="${loc4.content}">

								<tbody>
									<tr>
										<td>${loc4.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc2.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc2.number-1}&loc2=gyeongsang_north">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn"
											href="?page=${loc2.number-1}&loc2=gyeongsang_north">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc2.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc2.number}&loc2=gyeongsang_north">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn"
											href="?page=${loc2.number+1}&loc2=gyeongsang_north">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="gwangju" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc5" items="${loc5.content}">

								<tbody>
									<tr>
										<td>${loc5.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc5.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc5.number-1}&loc2=gwangju">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn" href="?page=${loc5.number-1}&loc2=gwangju">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc5.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc5.number}&loc2=gwangju">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn" href="?page=${loc5.number+1}&loc2=gwangju">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="daegu" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc6" items="${loc6.content}">

								<tbody>
									<tr>
										<td>${loc6.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc6.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc6.number-1}&loc2=daegu">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn" href="?page=${loc6.number-1}&loc2=daegu">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc6.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc6.number}&loc2=daegu">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn" href="?page=${loc6.number+1}&loc2=daegu">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="daejeon" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc7" items="${loc7.content}">

								<tbody>
									<tr>
										<td>${loc7.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc7.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc7.number-1}&loc2=daejeon">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn" href="?page=${loc7.number-1}&loc2=daejeon">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc7.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc7.number}&loc2=daejeon">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn" href="?page=${loc7.number+1}&loc2=daejeon">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="busan" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc8" items="${loc8.content}">

								<tbody>
									<tr>
										<td>${loc8.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc8.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc8.number-1}&loc2=busan">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn" href="?page=${loc8.number-1}&loc2=busan">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc8.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc8.number}&loc2=busan">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn" href="?page=${loc8.number+1}&loc2=busan">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="seoul" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc9" items="${loc9.content}">

								<tbody>
									<tr>
										<td>${loc9.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc9.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc9.number-1}&loc2=seoul">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn" href="?page=${loc9.number-1}&loc2=seoul">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc9.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc9.number}&loc2=seoul">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn" href="?page=${loc9.number+1}&loc2=seoul">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="sejong" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc10" items="${loc10.content}">

								<tbody>
									<tr>
										<td>${loc10.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc10.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc10.number-1}&loc2=sejong">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn" href="?page=${loc10.number-1}&loc2=sejong">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc10.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc10.number}&loc2=sejong">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn" href="?page=${loc10.number+1}&loc2=sejong">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="ulsan" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc11" items="${loc11.content}">

								<tbody>
									<tr>
										<td>${loc11.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc11.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc11.number-1}&loc2=ulsan">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn" href="?page=${loc11.number-1}&loc2=ulsan">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc11.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc11.number}&loc2=ulsan">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn" href="?page=${loc11.number+1}&loc2=ulsan">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="incheon" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc12" items="${loc12.content}">

								<tbody>
									<tr>
										<td>${loc12.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc12.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc12.number-1}&loc2=incheon">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn" href="?page=${loc12.number-1}&loc2=incheon">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc12.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc12.number}&loc2=incheon">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn" href="?page=${loc12.number+1}&loc2=incheon">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="jeolla_south" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc13" items="${loc13.content}">

								<tbody>
									<tr>
										<td>${loc13.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc13.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc13.number-1}&loc2=jeolla_south">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn"
											href="?page=${loc13.number-1}&loc2=jeolla_south">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc13.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc13.number}&loc2=jeolla_south">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn"
											href="?page=${loc13.number+1}&loc2=jeolla_south">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="jeolla_north" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc14" items="${loc14.content}">

								<tbody>
									<tr>
										<td>${loc14.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc14.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc14.number-1}&loc2=jeolla_north">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn"
											href="?page=${loc14.number-1}&loc2=jeolla_north">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc14.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc14.number}&loc2=jeolla_north">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn"
											href="?page=${loc14.number+1}&loc2=jeolla_north">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="jeju" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc15" items="${loc15.content}">

								<tbody>
									<tr>
										<td>${loc15.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc15.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc15.number-1}&loc2=jeju">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn" href="?page=${loc15.number-1}&loc2=jeju">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc15.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc15.number}&loc2=jeju">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn" href="?page=${loc15.number+1}&loc2=jeju">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="chungcheong_south" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc16" items="${loc16.content}">

								<tbody>
									<tr>
										<td>${loc16.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc16.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc16.number-1}&loc2=chungcheong_south">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn"
											href="?page=${loc16.number-1}&loc2=chungcheong_south">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc16.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc16.number}&loc2=chungcheong_south">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn"
											href="?page=${loc16.number+1}&loc2=chungcheong_south">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div id="chungcheong_north" class="loc_detail">
						<table class="loc_table">
							<thead>
								<tr>
									<th>고사장</th>
								</tr>
							</thead>
							<c:forEach var="loc17" items="${loc17.content}">

								<tbody>
									<tr>
										<td>${loc17.loc2}</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

						<!-- 다음버튼, 이전버튼 -->
						<div class="pre_nxt_btn">
							<div>
								<c:choose>
									<c:when test="${loc17.first}">
										<a style="display: none;" class="pre_btn"
											href="?page=${loc17.number-1}&loc2=chungcheong_north">Previous</a>
									</c:when>
									<c:otherwise>
										<a class="pre_btn"
											href="?page=${loc17.number-1}&loc2=chungcheong_north">Previous</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div>
								<c:choose>
									<c:when test="${loc17.last}">
										<a style="display: none;" class="nxt_btn"
											href="?page=${loc17.number}&loc2=chungcheong_north">Next</a>
									</c:when>
									<c:otherwise>
										<a class="nxt_btn"
											href="?page=${loc17.number+1}&loc2=chungcheong_north">Next</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
		<div class="map_wrap">
			<div id="map_wrap_head">
				<h3>고사장 위치 검색</h3>
			</div>
			<div id="map"
				style="width: 100%; height: 100%; position: relative; overflow: hidden;">
				<button type="button" id="loc_toggle" onclick="openCloseToc()">접기</button>
			</div>

			<div id="menu_wrap" class="bg_white">
				<div class="option">
					<div>
						<form onsubmit="searchPlaces(); return false;">
							<input type="text" value="수원역" id="keyword" size="15">
							<button id="map_btn" type="submit">검색하기</button>
						</form>
					</div>
				</div>
				<hr>
				<div id="loc_list">
					<ul id="placesList"></ul>
					<div id="pagination"></div>
				</div>
			</div>
		</div>

	</div><br><br><br><br><br>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=550165fc50ca06f1fbc5afcd02ba31f7&libraries=services"></script>

	<script type="text/javascript" src="/js/search_loc_map.js"></script>
	<script type="text/javascript" src="/js/search_loc_loc.js"></script>
</body>
<%@ include file="../layout/footer.jsp"%>