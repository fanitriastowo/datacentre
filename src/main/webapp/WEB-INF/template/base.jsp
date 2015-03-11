<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<tilesx:useAttribute name="current" />
<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<tiles:insertAttribute name="body" />
	<br>
	<tiles:insertAttribute name="footer" />
</body>
</html>