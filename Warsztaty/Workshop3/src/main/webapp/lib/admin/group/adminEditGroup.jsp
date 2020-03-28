<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Panel Administracyjny - edycja grupy</title>
</head>
<body>
<%@ include file="../admin.jsp"%>
<h1>Edycja grupy:</h1>
<form action="/editgroup" method="POST">
    <label>Id Grupy: (brak mozliwosci edycji)<br/>
        <input type="number" value="${group.id}" name="groupId" readonly><br/>
    </label>
    <label>Nazwa Grupy:<br/>
        <input type="text" name="name" value="${group.name}"><br/>
    </label>
    <input type="submit" value="Wyslij">
</form>

<%@include file="/lib/fragment/footer.jsp" %>
</body>
</html>
