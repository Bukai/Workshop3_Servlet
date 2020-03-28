<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Panel administracyjny - lista zadan</title>
</head>
<body>
<%@ include file="../admin.jsp"%>
<h1>Lista zadan</h1>

<a href="/addnewexercise"><button>+ Dodaj nowe zadanie</button></a>

<table border="1">
    <tr style="padding: 10px">
        <th>Id</th>
        <th>Nazwa</th>
        <th>Opis</th>
        <th>Edytuj</th>
        <th>Usuń</th>
    </tr>
    <c:forEach items="${exercises}" var="exercise">
        <tr>
            <td>${exercise.id}</td>
            <td>${exercise.title}</td>
            <td>${exercise.description}</td>
            <td><a href="/editexercise?exerciseId=${exercise.id}"><button>Edytuj</button></a></td>
            <td><a href="/delete?equal=exercise&&id=${exercise.id}"><button>Usuń</button></a></td>
        </tr>
    </c:forEach>
</table>
<%@include file="/lib/fragment/footer.jsp"%>
</body>
</html>
