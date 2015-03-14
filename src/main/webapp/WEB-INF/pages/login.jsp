<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="${pageContext.request.contextPath }/static/images/favicon.png">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/metisMenu.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/morris.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/custom.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/font-awesome.min.css">
<title><tiles:getAsString name="title" /></title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4 col-sm-4 col-sm-offset-4">
				<div id="login-panel" class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Silahkan Login</h3>
					</div>
					<div class="panel-body">
						<form role="form" action="/j_spring_security_check" method="POST">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="Username" name="j_username" type="text" autofocus>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password" name="j_password" type="password">
								</div>
								<button class="btn btn-lg btn-success btn-block" type="submit">Sign In</button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
    <footer>
        <tiles:insertAttribute name="footer" />
    </footer>

	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.map"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/metisMenu.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/custom.js"></script>
</body>
</html>