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
	<form:form method="POST" action="registerUser" modelAttribute="command">
		<spring:message code="register.userid" text="default text"></spring:message>
		<form:input path="userId" class="form-control" />
		<form:errors path="userId"></form:errors>
		<spring:message code="register.pwd" text="default text"></spring:message>
		<form:input path="password" class="form-control" />
		<form:errors path="password"></form:errors>
	</form:form>
</body>
</html>