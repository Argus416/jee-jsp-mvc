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


		<form th:action="@{/country/add}" th:object="${country}" method="post">
			<label for="countryName">Country name:</label>
			<input type="text" th:field="*{country}" id="countryName" name="country.country" class="w3-input" placeholder="Enter country name" />
			<button type="submit">Submit</button>
		</form>

	</div>
</body>
<!-- JavaScript resources dataTables + jQuery -->

</html>
