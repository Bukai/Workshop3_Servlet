<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Panel administracyjny - dodawanie nowego rozwiazania</title>
</head>
<body>
<%@ include file="../admin.jsp"%>
<h1>Dodawanie nowego rozwiazania:</h1>
<form action="/editsolution" method="POST">
    <label>
        Id rozwiazania: <br/>
        <input type="number" name="id" value="${solution.id}" readonly><br/>
    </label>
    <label>
        Opis rozwiazania: <br/>
        <input type="text" name="description" value="${solution.description}"><br/>
    </label>
    <label>Numer zadania: <br/>
        <select name="exercise">
            <c:forEach var="exercise" items="${exercises}">
                <option name="${exercise.id}">${exercise.id} - ${exercise.title}</option>
            </c:forEach>
        </select> <br/>
        <select name="user">
            <c:forEach var="user" items="${users}">
                <option name="${user.id}">${user.id} - ${user.userName} - ${user.email}</option>
            </c:forEach>
        </select> <br/>
    </label>

    <input type="submit" value="Wyslij"><br/>
</form>
<%@include file="/lib/fragment/footer.jsp" %>
</body>
</html>
