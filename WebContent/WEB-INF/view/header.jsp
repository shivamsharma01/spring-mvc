<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url value="/resources/assets/nptel-logo.jpg" var="crunchifyCSS" />
<header class="blue">
	<nav class="navbar navbar-expand-lg navbar-light nav-bg">
		<a class="navbar-brand"
			href="${pageContext.servletContext.contextPath}"> <img
			class="logo" src="${crunchifyCSS}" alt="" />
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<li class="nav-item"><a class="nav-link" href="#">FAQ</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Career</a></li>
			</ul>
			<a class="btn btn-md "
				href="${pageContext.servletContext.contextPath}/register"
				style="margin-top: 10px; border-top-width: 1px">
				<button type="button" class="btn btn-outline-primary white">Sign
					Up</button>
			</a> <a class="btn btn-md "
				href="${pageContext.servletContext.contextPath}/login"
				style="margin-top: 10px; border-top-width: 1px">
				<button type="button" class="btn btn-outline-primary white">Login</button>
			</a>
		</div>
	</nav>
</header>