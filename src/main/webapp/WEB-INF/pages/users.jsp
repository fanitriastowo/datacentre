<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>
<h1>List of User</h1>

<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<thead>
			<tr>
				<th>Username</th>
				<th>Email</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users }" var="user">
				<tr>
					<td><c:out value="${user.username }" /></td>
					<td><c:out value="${user.email }" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>