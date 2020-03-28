<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Panel administracyjny - edycja zadania</title>
</head>
<body>
<%@ include file="../admin.jsp"%>
<h1>Edycja zadania:</h1>
<form action="/editexercise" method="POST">
    <label>
        Id zadania: <br/>
        <input type="number" name="id" value="${exercise.id}" readonly><br/>
    </label>
    <label>
        Tytul zadania: <br/>
        <input type="text" name="title" value="${exercise.title}"><br/>
    </label>
    <label>Opis zadania: <br/>
        <input type="text" name="description" value="${user.description}"><br/>
    </label>

    <input type="submit" value="Wyslij"><br/>
</form>
<%@include file="/lib/fragment/footer.jsp" %>
</body>
</html>
