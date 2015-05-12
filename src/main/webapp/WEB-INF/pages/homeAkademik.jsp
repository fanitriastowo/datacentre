<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>

<security:authorize access="hasRole('ROLE_AKADEMIK')">
	<h2>Welcome, Akademik</h2>
</security:authorize>