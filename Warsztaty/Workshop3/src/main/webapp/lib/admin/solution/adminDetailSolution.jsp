<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Szczegóły</title>
</head>
<body>
<%@ include file="../admin.jsp"%>
<h1>Szczegoły rozwiazania</h1>

<a href="/addnewsolution"><button>+ Dodaj nowe rozwiazanie</button></a>
<table border="1">
    <tr style="padding: 10px">
        <th>Id</th>
        <th>Data dodania</th>
        <th>Data aktualizacji</th>
        <th>Opis</th>
        <th>Id zadania</th>
        <th>Id uzytkownika</th>
        <th>Edytuj</th>
        <th>Usun</th>
    </tr>
    <c:forEach items="${solutions}" var="solution">
    <tr style="padding: 10px">
        <td>${solution.id}</td>
        <td>${solution.created}</td>
        <td>${solution.updated}</td>
        <td>${solution.description}</td>
        <td>${solution.exercise_id}</td>
        <td>${solution.users_id}</td>
        <td><a href="/editsolution?solutionId=${solution.id}"><button>Edytuj</button></a></td>
        <td><a href="/delete?equal=solution&&id=${solution.id}"><button>Usuń</button></a></td>
    </tr>
    </c:forEach>
</table>
<%@include file="/lib/fragment/footer.jsp"%>
</body>
</html>
