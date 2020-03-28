<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Panel Administracyjny - dodawanie nowej grupy</title>
</head>
<body>
<%@ include file="../admin.jsp"%>
<h1>Dodawanie nowej grupy:</h1>
<form action="/addnewgroup" method="POST">
    <label>Nazwa Grupy:<br/>
        <input type="text" name="name"><br/>
    </label>
    <input type="submit" value="Wyslij">
</form>

<%@include file="/lib/fragment/footer.jsp" %>
</body>
</html>
