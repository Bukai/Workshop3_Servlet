<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Panel administracyjny - dodawanie nowego uzytkownika </title>
</head>
<body>
<%@ include file="../admin.jsp"%>
<h1>Dodawanie nowego uzytkownika:</h1>
<form action="/addnewuser" method="POST">
    <label>
        Nazwa: <br/>
        <input type="text" name="name" value=""><br/>
    </label>
    <label>Email: <br/>
        <input type="text" name="email" value=""><br/>
    </label>
    <label>Password: <br/>
        <input type="password" name="password"><br/>
    </label>
    <label>Numer grupy: <br/>
        <select name="group">
            <c:forEach var="group" items="${groups}">
                <option name="${group.id}">${group.id} - ${group.name}</option>
            </c:forEach>
        </select> <br/>
    </label>
    <input type="submit" value="Wyslij"><br/>
</form>
<%@include file="/lib/fragment/footer.jsp" %>
</body>
</html>
