<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Panel administracyjny - dodawanie nowego zadania</title>
</head>
<body>
<%@ include file="../admin.jsp"%>
<h1>Dodawanie nowego zadania:</h1>
<form action="/addnewexercise" method="POST">
    <label>
        Tytul zadania: <br/>
        <input type="text" name="title"><br/>
    </label>
    <label>Opis zadania: <br/>
        <input type="text" name="description"><br/>
    </label>

    <input type="submit" value="Wyslij"><br/>
</form>
<%@include file="/lib/fragment/footer.jsp" %>
</body>
</html>
