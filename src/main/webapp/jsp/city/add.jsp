<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 	CSS (w3css) de la Page -->
	<link rel="stylesheet" href="<c:url value="css/w3.css" />" />
	<link rel="stylesheet" href="<c:url value="css/style.css" />" />

	<title>Countries JSP</title>

</head>

<body onload="init();">

<%--<jsp:include page="header.jsp"></jsp:include>--%>

<div class="w3-container">
	<h2 style="text-align: center">Ajouter une ville</h2>

	<form name="addCityPost" action="add"  method="post">
		<div>
			<label for="countryId">Country </label>
			<select name="country" id="countryId">
				<c:forEach items="${countries}" var="elem">
					<option  value="${elem.id}">${elem.country}</option>
				</c:forEach>
			</select>
		</div>

		<div>
			<label>City</label>
			<input type="text" name="city" />
		</div>
		<button type="submit">Submit</button>
	</form>

</div>
</body>
<!-- JavaScript resources dataTables + jQuery -->

</html>
