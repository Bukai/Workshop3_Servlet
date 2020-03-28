<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Szczegoly uzytkownika</title>
</head>
<body>
<%@ include file="../admin.jsp" %>
<h1>Szczegoly uzytkownika</h1>
Nazwa: <b>${user.userName}</b>  <br/>
Email: <b>${user.email}</b><br/><br>

Wszystkie rozwiązania użytkownika:
<table border="1">
    <tr style="padding: 10px">
        <th>Id rozwiazania</th>
        <th>Id zadania</th>
        <th>Data aktulizacji roziwazania</th>
        <th>Rozwiazanie</th>
    </tr>
    <c:forEach items="${solutions}" var="solution">
        <tr>
            <td>${solution.id}</td>
            <td>${solution.exercise_id}</td>
            <td>${solution.updated}</td>
            <td>${solution.description}</td>
        </tr>
    </c:forEach>

</table>
<a href="javascript:history.back();"><button>Powrot</button></a>
<%@include file="/lib/fragment/footer.jsp" %>
</body>
</html>
