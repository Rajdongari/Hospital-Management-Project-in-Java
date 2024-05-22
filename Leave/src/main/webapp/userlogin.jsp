<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login Page</title>
  <%@include file="component/allcss.jsp"%>
  <style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
  <%@include file="component/navbar.jsp"%>
  <div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<h3 class="fs-4 text-center">User Login</h3>
							<c:if test="${not empty succMsg }">
						<h6 class="text-center text-danger fs-3">${succMsg}</h6>
					<c:remove var="succMsg" scope="session"/>
					</c:if>
					
						<c:if test="${not empty errorMsg }">
						<h6 class="text-center text-danger fs-3">${errorMsg}</h6>
					<c:remove var="errorMsg" scope="session"/>
					</c:if>
					
						<form action="userlogin" method="post">
							<div class="mb-3">
								<label class="form-label">Email Address</label> <input required
									name="email" type="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
					<br>Dont Have an Account?<a href="signup.jsp" class="clink">Create one</a>

					</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>