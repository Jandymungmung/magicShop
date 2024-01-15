<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>header</title>
<link rel="stylesheet" href="./css/home.css">
</head>
<body>
	<div id="header">
		<div id="nav1">
			<ul id="user">
				<c:choose>
					<c:when test="${not empty loginOk and loginOk.userId eq 'test'}">
   	 					<li><a href="logout.do" class="top">로그아웃</a></li>
   	 					<li><a href="home.jsp" class="top">관리 페이지</a></li>
					</c:when>
					<c:when test="${not empty loginOk}">
						<li><a href="logout.do" class="top">로그아웃</a></li>
						<li><a href="myPage.jsp" class="top">마이페이지</a></li>
						<li><a href="home.jsp" class="top">장바구니</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="login.jsp" class="top">로그인</a></li>
						<li><a href="joinMembership.jsp" class="top">회원가입</a></li>
					</c:otherwise>
				</c:choose>
				<li><a href="getBoardList.do" class="top">게시판</a></li>
				<li><a href="home.jsp" class="top">즐겨찾기</a></li>
			</ul>

			<div class="search_section">
				<form id="searchBarForm">
					<!--action 채우기-->
					<input id="banner_action" name="banner_action" type="hidden">
					<div class="">
						<!--채우기-->
						<fieldset>
							<legend>검색</legend>
							<input id="keyword" name="keyword" type="text">
							<!--비교할것-->
						</fieldset>
					</div>
				</form>
			</div>
			<div id="snsIcon">
				<ul>
					<li><a href="https://www.instagram.com/eom_sssmin/"
						target="_blank"> <img src="./img/icon/sns_ico_03.png"
							alt="인스타그램">
					</a></li>
					<li><a href="https://smartstore.naver.com/bnbmagic"
						target="_blank"> <img src="./img/icon/sns_ico_04.png"
							alt="스마트스토어">
					</a></li>
					<li><a href="" target="_blank"> <img
							src="./img/icon/sns_ico_01.png" alt="페이스북">
					</a></li>
					<li><a href="" target="_blank"> <img
							src="./img/icon/sns_ico_02.png" alt="카카오스토리">
					</a></li>
				</ul>
			</div>
		</div>

		<hr id="line">
		<a href="home.jsp"> <img id="title"
			src="./img/title/title.jpg">
		</a>
		<hr>

		<div id="nav2">
			<ul id="menu">
				<li><a href="">전체 보기</a></li>
				<li><a href="">카드 마술</a></li>
				<!-- 링크 수정할 것-->
				<li><a href="">동전 마술</a></li>
				<!-- 링크 수정할 것-->
				<li><a href="">플레잉 카드</a></li>
				<!-- 링크 수정할 것-->
				<li><a href="">클로즈업</a></li>
				<!-- 링크 수정할 것-->
				<li><a href="">팔러/스테이지</a></li>
				<!-- 링크 수정할 것-->
				<li><a href="">파이어/플래시</a></li>
				<!-- 링크 수정할 것-->
				<li><a href="">DVD/서적</a></li>
				<!-- 링크 수정할 것-->
				<li><a href="">악세서리</a></li>
				<!-- 링크 수정할 것-->
			</ul>
		</div>
		<hr>
	</div>
</body>
</html>