<%@page import="com.dbcon.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<title></title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.point-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="img/build.jpg" alt="First slide"
					height="400px">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/dtn1.jpg" alt="Second slide"
					height="400px">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="img/dtn2.jpg" alt="Third slide"
					height="400px">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<div class="container p-3">
		<h4 class="text-center fs-2">Key Features of our Hospital</h4>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">100% Safety</p>
								<p>Providing Quality Healthcare: One of the primary goals of
									hospitals is to deliver high-quality healthcare services to
									patients. This involves ensuring accurate diagnosis, effective
									treatment, and compassionate care</p>
							</div>
						</div>

					</div>
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Clean Enviroment</p>
								<p>Maintaining a clean environment helps keep diseases away and fosters growth and development of children.</p>
							</div>
						</div>

					</div>
					<div class="col-md-6 mt-4">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Friendly Doctors</p>
								<p>Doctors build friendly relations with patients to make them comfortable. Doctors always have to be alert on their duty. Doctors cannot afford to make any single mistake, because one of their mistakes can lose patient life.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card point-card">
							<div class="card-body">
								<p class="fs-5">Medical Research</p>
								<p>Medical research also known as health research, refers to the process of using scientific methods with the aim to produce knowledge about human diseases, the prevention and treatment of illness, and the promotion of health.</p>
							</div>
						</div>

					</div>

				</div>

			</div>
			<div class="col-md-4">
				<img alt="" src="img/docter.png">
			</div>
		</div>
	</div>
	<hr>
	<div class="container p-2">
		<h4 class="text-center fs-2">Our Team</h4>
		<div class="row">
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/new4.jpeg" width="250px" height="300px">
						<p class="fw-bold fs-5">Raj Dongari</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/docto2.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Purva Zapke</p>
						<p class="fs-7">(Cheif Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/doctor3.png" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Sumedh Kedari</p>
						<p class="fs-7">(Cheif Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card point-card">
					<div class="card-body text-center">
						<img src="img/doctor4.jpeg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr.Smiti</p>
						<p class="fs-7">(Cheif Doctor)</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>