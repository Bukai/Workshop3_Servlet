<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Szkola programowania</title>
</head>
<body>
<%@ include file="/lib/fragment/headers/headerMain.jsp"%>
<h2>Ostatnio dodane rozwiazania!: </h2>
<table border="1">
    <tr style="padding: 10px">
        <th>Nazwa</th>
        <th>Autor</th>
        <th>Data dodania rozwiazania</th>
        <th>Akcje</th>
    </tr>
    <c:forEach items="${solutions}" var="solution">
        <tr>
            <td>${solution.description}</td>
            <td>${solution.users_id}</td>
            <td>${solution.created}</td>
            <td><a href="/details?solutionId=${solution.getId()}"><button>Szczegoly</button></a></td>
        </tr>
    </c:forEach>
</table>
<%@include file="/lib/fragment/footer.jsp"%>
</body>
</html>
