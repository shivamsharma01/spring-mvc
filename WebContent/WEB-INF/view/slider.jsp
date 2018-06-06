<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<c:url value="/resources/css/slider.css"/>" />
<section class="center">
	<font class="fontstyle"><b>NPTEL-Portal with SpringMVC</b></font>
	<c:if test="${logoutMessage ne null }">
		<div class="text-center text-danger">
			<h4 class="fontstyle">
				<strong>${logoutMessage}</strong>
			</h4>
		</div>
		<br>
	</c:if>
	<div id="demo" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		</ul>
		<!-- The slideshow -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="<c:url value='/resources/assets/online-courses-1.jpg'/>"
					alt="online-course-1">
				<div class="jumbotron carousel-caption">
					<h3>Los Angeles</h3>
					<p>We had such a great time in LA!</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="<c:url value='/resources/assets/online-courses-2.jpg'/>"
					alt="online-course-2">
				<div class="jumbotron carousel-caption">
					<h3>Los Angeles</h3>
					<p>We had such a great time in LA!</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="<c:url value='/resources/assets/online-courses-3.jpg'/>"
					alt="online-course-3">
				<div class="jumbotron carousel-caption">
					<h3>Los Angeles</h3>
					<p>We had such a great time in LA!</p>
				</div>
			</div>
		</div>
		<!-- Left and right controls -->
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>
</section>