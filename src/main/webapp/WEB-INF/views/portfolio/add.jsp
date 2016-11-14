<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menuTop.jsp" %>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<form role="form" method="post">
			<div class="box">
				<div class="box-header width-border">
					<h3 class="box-title">글쓰기</h3>
				</div>

				<div class="box-body">
					<div class="form-group">
						<label for="title">제목</label>
						<input type="text" name="title" id="title" class="form-control" placeholder="제목을 입력해주세요."/>
					</div>
					<div class="form-group">
						<label for="content">내용</label>
						<textarea name="content" id="content" rows="3" class="form-control" placeholder="내용을 입력해주세요."></textarea>
					</div>
				</div>

				<div class="box-footer">
					<button type="submit" class="btn btn-primary">등록</button>
					<button type="submit" class="btn btn-warnning">취소</button>
				</div>
			</div>
			</form>
		</div>
	</div>
</section>

<%@ include file="../include/footer.jsp" %>