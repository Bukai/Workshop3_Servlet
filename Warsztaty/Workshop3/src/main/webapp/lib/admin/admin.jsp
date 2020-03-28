<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Panel Administracyjny</title>
</head>
<body>
<%@ include file="/lib/fragment/headers/headerAdmin.jsp" %>
<h1>Panel administracyjny</h1>
<ul>
    <li><a href="/adminExercises">Lista zadan</a></li>
    <li><a href="/adminGroup">Lista grup</a></li>
    <li><a href="/adminusers">Lista uzytkownikow</a></li>
    <li><a href="/admindetails">Lista rozwiazan</a></li>
</ul>
<%@include file="/lib/fragment/footer.jsp" %>
</body>
</html>
