<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
 <%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-house-chimney-medical"></i>RD Hospital</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active"  href="index.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="Doctorpatient.jsp">View Patient</a>
        </li>
        <li class="nav-item">
       <a href="../doclogout" class="btn btn-danger ml-2"><i class="fa-solid fa-right-to-bracket ml-2"></i>LogOut</a>
        
        </li>
       
      </ul>
      <form class="d-flex">
      <div class="dropdown">
  <button  class="btn btn-danger ml-2 dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-user-circle"></i>${doctobj.fullName }
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="#">Edit Profile</a></li>
    <li><a class="dropdown-item" href="#">Logout</a></li>
    
  </ul>
</div>
</form>
</div>
   
   </div>
</nav>
</body>
</html>