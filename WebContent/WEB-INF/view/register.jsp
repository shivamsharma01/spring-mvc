<!-- register.jsp -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<section id="slider" class="margintop-10">
	<div id="home-carousel" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner">
			<div class="item active"
				style="background-image: url(<c:url value='/resources/imgs/382266112.jpg'/>)">
				<br>
				<br>
				<div class="container">
					<div class="col-sm-6">
						<p class="head " style="color: white">Connecting flight</p>
						<p class="carousel-content  " style="color: white">Taking more
							than one flight to get to your final destination? At InfyGo, we
							make connecting flights much easier!</p>
					</div>
				</div>
			</div>
			<div class="item"
				style="background-image: url(<c:url value='/resources/imgs/586266182.jpg'/>)">
				<br>
				<br>
				<div class="container">
					<div class="col-sm-6">
						<p class="head " style="color: white">InfyGo Meals onboard</p>
						<p class="carousel-content " style="color: white">Tickle your
							taste buds and enjoy sumptuous meals onboard!</p>
					</div>
				</div>
			</div>

			<div class="item"
				style="background-image: url(<c:url value='/resources/imgs/346909778.jpg'/>)">
				<br>
				<br>
				<div class="container">
					<div class="col-sm-6">
						<p class="head " style="color: white">Hospitality</p>
						<p class="carousel-content " style="color: white">More
							convenience and comfort with our hospitality and services!</p>
					</div>
				</div>
			</div>


		</div>
		<ol class="carousel-indicators">
			<li data-target="#home-carousel" data-slide-to="0" class="active"></li>
			<li data-target="#home-carousel" data-slide-to="1"></li>
			<li data-target="#home-carousel" data-slide-to="2"></li>
		</ol>
	</div>
	<!--/-carousel--> </section>
	<!-- /SLIDER -->


	<!-- ABOUT US -->
	<div class="row marginbottom-150">
		<div class="container col-sm-offset-1 col-sm-5 col-left ">
			<h1 class="capital">
				<strong>About Us</strong>
			</h1>
			<span class="st-border"></span>
			<div class="about-us ">
				<br>
				<p>
					<b>Why InfyGo?<br></b> The leading player in online flight
					bookings in India, InfyGo provides great offers, some of the lowest
					airfares, exclusive discounts and a seamless online booking
					experience. Flight bookings through our website is a user friendly
					experience, and with just a few clicks you can complete your
					booking.
				</p>
				<br>

				<p>
					<b>Booking Flights with InfyGo<br></b> While booking flights
					with InfyGo, you can expect the ultimate online booking experience.
					With premium customer service, 24/7 dedicated helpline for support,
					and over 5 million delighted customers, InfyGo takes great pride in
					enabling user satisfaction.
				</p>
				<br>

				<p>
					<b>Domestic Flights with InfyGo<br></b> InfyGo is India's
					leading player for flight bookings, and have a dominant position in
					the domestic flights sector. With the cheapest fare guarantee,
					experience great value at the lowest price.
				</p>

			</div>
		</div>

		<!-- /ABOUT US -->

		<div class="container col-sm-5 col-right signup" style="width: 40%">

			<div class="panel panel-default">

				<div class="panel-heading">
					<h4 class="capital">
						<spring:message code="register.register" text="default text" />
					</h4>

					<div style="width: 100%; margin-right: -55px" align="right"
						class="fontstyle">
						Language : <a href="?locale=en">English</a>|<a href="?locale=hi">Hindi</a>
					</div>
					<div style="width: 100%; margin-right: -35px" align="right"
						class="fontstyle">
						Themes : <a href="?theme=green">Green</a>|<a href="?theme=red">Red</a>|<a
							href="?theme=default">Default</a>
					</div>
				</div>
				<div class="panel-body">
					<form:form method="POST" action="registerUser"
						modelAttribute="command">
						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-4 text-right fontstyle">
								<spring:message code="register.userid" text="default text" />
								<span style="color: red">*</span>
							</div>
							<div class="col-sm-6">
								<form:input path="userId" class="form-control" />
								<br>
								<form:errors path="userId" />
							</div>
							<br>
						</div>

						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-4 text-right fontstyle">

								<spring:message code="register.pwd" text="default text" />
								<span style="color: red">*</span>
							</div>
							<div class="col-sm-6">
								<form:password path="password" class="form-control" />
								<br>
								<form:errors path="password" />
							</div>
							<br>

						</div>
						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-4 text-right fontstyle">

								<spring:message code="register.name" text="default text" />
								<span style="color: red">*</span>
							</div>
							<div class="col-sm-6">
								<form:input path="name" class="form-control" />
								<br>
								<form:errors path="name" />
							</div>
							<br>
						</div>
						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-4 text-right fontstyle">

								<spring:message code="register.city" text="default text" />
								<span style="color: red">*</span>
							</div>
							<div class="col-sm-6">
								<form:input path="city" class="form-control" />
								<br>
								<form:errors path="city" />
							</div>
							<br>
						</div>

						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-4 text-right fontstyle">

								<spring:message code="register.email" text="default text" />
								<span style="color: red">*</span>
							</div>
							<div class="col-sm-6">
								<form:input path="email" class="form-control" />
								<br>
								<form:errors path="email" />
							</div>
							<br>

						</div>
						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-4 text-right fontstyle">

								<spring:message code="register.phone" text="default text" />
								<span style="color: red">*</span>
							</div>
							<div class="col-sm-6">
								<form:input path="phone" class="form-control" maxlength="10" />
								<br>
								<form:errors path="phone" />
							</div>
							<br>
						</div>
						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-3 text-right fontstyle">

							</div>
							<div class="col-sm-6">
								<input type="submit" class="btn btn-primary"
									value="<spring:message code="register.submit"/>" />
							</div>
							<div class="col-md-12 text-center">
								<div class="text-center text-danger">${message}</div>
							</div>
						</div>
						<br>
						<c:if test="${successMessage ne null}">
							<div class="alert alert-success col-md-12" align="center">${successMessage}
								<br> Click <a href="login"> &nbsp;here </a>to login.
							</div>
						</c:if>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<!-- /SIGNUP -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>