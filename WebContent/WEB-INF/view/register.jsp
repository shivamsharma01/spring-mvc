<!-- register.jsp -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<spring:message code="register.submit" var="submit" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HomePage</title>
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link rel="stylesheet" href="<c:url value="/resources/css/styles.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/header.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/register.css"/>" />
</head>
<body>
	<div id="container">
		<section id="header">
			<jsp:include page="header.jsp"></jsp:include>
		</section>
		<section id="body">
			<section>
				<jsp:include page="slider.jsp"></jsp:include>
			</section>

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
							bookings in India, InfyGo provides great offers, some of the
							lowest airfares, exclusive discounts and a seamless online
							booking experience. Flight bookings through our website is a user
							friendly experience, and with just a few clicks you can complete
							your booking.
						</p>
						<br>

						<p>
							<b>Booking Flights with InfyGo<br></b> While booking flights
							with InfyGo, you can expect the ultimate online booking
							experience. With premium customer service, 24/7 dedicated
							helpline for support, and over 5 million delighted customers,
							InfyGo takes great pride in enabling user satisfaction.
						</p>
						<br>

						<p>
							<b>Domestic Flights with InfyGo<br></b> InfyGo is India's
							leading player for flight bookings, and have a dominant position
							in the domestic flights sector. With the cheapest fare guarantee,
							experience great value at the lowest price.
						</p>

					</div>
				</div>

				<!-- /ABOUT US -->

				<div class="container col-sm-5 col-right signup" style="width: 40%">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2 class="capital">
								<spring:message code="register.register" text="default text" />
							</h2>
							<div style="text-align: center">
								Language : <a href="?locale=en">English</a>|<a href="?locale=hi">Hindi</a>
							</div>
							<div style="text-align: center">
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
									<div class="col-md-12">
										<button type="submit" class="btn btn-primary btn-block">${submit}</button>
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
		</section>
		<section id="footer">
			<jsp:include page="footer.jsp"></jsp:include>
		</section>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>
</body>
</html>