<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">홈페이지</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li id="board" class="active"><a href="/board/list">게시판</a></li>
				<li id="portfolio"><a href="/portfolio/list">작업 이력</a></li>
				<li id="history"><a href="/history/list">나의 기록</a></li>
				<li id="blogkr"><a href="/blogkr/list">블로그 키워드 순위검색</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
<c:if test="${empty login}">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
</c:if>
			</ul>
		</div>
	</div>
</nav>
