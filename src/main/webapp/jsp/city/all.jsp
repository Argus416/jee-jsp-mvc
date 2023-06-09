<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 	CSS (w3css) de la Page -->
    <link rel="stylesheet" href="<c:url value="css/w3.css" />"/>

    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.css"/>


    <title>Countries JSP</title>

</head>

<body>

<%--<jsp:include page="header.jsp"></jsp:include>--%>

<div class="w3-container">
    <h2 style="text-align: center">Sakila - cities</h2>
    <div class="w3-margin-bottom w3-margin-top">
        <a class="w3-button w3-green" href="<c:url value="/"/>">Back</a>
        <a class="w3-button w3-blue" href="city/add">Add</a>
    </div>

    <table id="countriesTable" class="w3-centered w3-table-all">
        <thead>
        <tr class="w3-light-grey">
            <th>Id</th>
            <th>City</th>
            <th>Country</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${cities}" var="elem">
            <tr>
                <th scope="row">${elem.id}</th>
                <td>
                        ${elem.city}
                </td>
                <td>
                        ${elem.country.country}
                </td>

                <td>
                    <a class="w3-button w3-blue" href="city/edit/${elem.id}">Edit</a>
                    <form method="POST" name="deleteCity" action="city/delete">
                        <input type="hidden" name="id" value="${elem.id}"/>
                        <button class="w3-button w3-red">Delete</button>
                    </form>

                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"
        integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
</script>
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.js"></script>
<script>
    let table = new DataTable('#countriesTable', {
        // config options...
    });
</script>

</body>
<!-- JavaScript resources dataTables + jQuery -->

</html>
