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
          <a class="nav-link active"  href="adminDashboard.jsp"><i class="fa-solid fa-house-user"></i>Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="doctor.jsp"><i class="fa-solid fa-user-plus"></i>Add Doctor</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active"  href="viewdoctor.jsp"><i class="fa-solid fa-user-doctor"></i>View Doctor</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="patient.jsp"><i class="fa-solid fa-hospital-user"></i>Patient</a>
        </li>
       <li class="nav-item">
          <a class="nav-link active" href=""><i class="fa-solid fa-user-tie"></i>Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="../adminlogout">Logout</a>
        </li>
      </ul>

    </div>
  </div>
</nav>
</body>
</html>