<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link
	href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.js"></script>
<script
	src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<title>Sparrows › <c:if test="${!empty userInfo}">${userInfo.username}</c:if><c:if
		test="${!empty errorInfo}">会员未找到</c:if></title>
</head>
<body>
	<!-- 引入header文件 -->
	<%@ include file="header.jsp"%>

	<div style="width: 70%; margin: 1% 2% 1% 5%; float: left;">
		<div class="panel panel-default" id="main" style="">
			<div class="panel-heading" style="background-color: white">
				<a href="${pageContext.request.contextPath}/index">Sparrows</a> ›
				${userInfo.username}
			</div>

			<div class="panel-body">
				<c:if test="${!empty userInfo}">
					<form class="form-horizontal" role="form">
						<div class="row">
							<%--左侧--%>
							<div class="col-md-4">
								<img width="200px" height="200px"
									src="${pageContext.request.contextPath}/static${userInfo.avatar}"
									class="img-rounded">

							</div>
							<%--右侧--%>
							<div class="col-md-6">
								<div class="form-group">
									<label class="col-sm-3 control-label">用户名</label>
									<div class="col-sm-9">
										<p class="form-control-static">${userInfo.username}</p>
									</div>

								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">Email</label>
									<div class="col-sm-9">
										<p class="form-control-static">${userInfo.email}</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">注册时间</label>
									<div class="col-sm-9">
										<p class="form-control-static">${userInfo.localCreateTime}</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-3 control-label">积分</label>
									<div class="col-sm-9">
										<p class="form-control-static">${userInfo.credit}</p>
									</div>
								</div>
							</div>
							<div class="col-md-2" style="padding-top: 1%">
								<c:forEach items="${tipicCount}" var="tab">
									<label>${tab}</label><br>
								</c:forEach>
							</div>
						</div>


					</form>
				</c:if>
				<c:if test="${!empty errorInfo}">
                会员未找到!
            </c:if>
			</div>
		</div>
	</div>

	<!-- 引入侧边栏文件 -->
	<%@ include file="side.jsp"%>

	<!-- 引入footer文件 -->
	<%@ include file="footer.jsp"%>

</body>
</html>