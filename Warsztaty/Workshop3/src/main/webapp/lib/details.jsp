<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Szczegóły</title>
</head>
<body>
<%@ include file="/lib/fragment/headers/headerMain.jsp"%>
<h1>Szczegoły rozwiazania</h1>
<table border="1">
    <tr style="padding: 10px">
        <th>Id</th>
        <th>Data dodania</th>
        <th>Data aktualizacji</th>
        <th>Opis</th>
        <th>Id zadania</th>
        <th>Id uzytkownika</th>
    </tr>
    <tr style="padding: 10px">
        <td>${solutions.id}</td>
        <td>${solutions.created}</td>
        <td>${solutions.updated}</td>
        <td>${solutions.description}</td>
        <td>${solutions.exercise_id}</td>
        <td>${solutions.users_id}</td>
    </tr>
</table>
<a href="javascript:history.back();"><button>Powrot</button></a>
<%@include file="/lib/fragment/footer.jsp"%>
</body>
</html>
