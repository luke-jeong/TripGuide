<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container" style="float: left;">
	<div class="col-sm-4">
		<h2>About Me</h2>
		<p>${principal.user.username}</p>
		<p>${principal.user.email }</p>
		<ul class="nav nav-pills flex-column">
			<li class="nav-item"><a class="nav-link active" href="#">Active</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="/user/prefer">즐겨찾기</a></li>
			<li class="nav-item"><a class="nav-link" href="/user/updateUser">회원정보</a></li>
			</li>
		</ul>
		<hr class="d-sm-none">
	</div>
</div>
<div class="container">

	<form>
		<input type="hidden" id="id" value="${principal.user.id}" />
		<div class="form-group">
			<label for="username">Username</label> <input type="text"
				value="${principal.user.username }" class="form-control"
				placeholder="Enter username" id="username" readonly>
		</div>

		<c:if test="${empty principal.user.provider}">
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					class="form-control" placeholder="Enter password" id="password">
			</div>
		</c:if>

		<div class="form-group">
			<label for="email">Email</label> <input type="email"
				value="${principal.user.email}" class="form-control"
				placeholder="Enter email" id="email" readonly>
		</div>

	</form>
	<button id="btn-update" class="btn btn-primary">회원수정완료</button>

</div>

<script src="../res/js/user.js"></script>
<%@ include file="../layout/footer.jsp"%>
