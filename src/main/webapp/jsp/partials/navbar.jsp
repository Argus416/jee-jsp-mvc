<%@ page import="jakarta.servlet.jsp.jstl.core.Config" %>
<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: Developpeur
  Date: 09/05/2023
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title>Index</title>
</head>
<body>
<header>
    <nav>
        <%
            Locale locale = pageContext.getResponse().getLocale();
            String language = locale.getLanguage();
        %>

        <% if (language.equals("fr")) { %>
        <a href="?lang=en">English</a>
        <% } else { %>
        <a href="?lang=fr">Français</a>
        <% } %>

    </nav>
</header>
</body>
</html>
