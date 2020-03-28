<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Panel administracyjny - edycja uzytkownika </title>
</head>
<body>
<%@ include file="../admin.jsp"%>
<h1>Edycja uzytkownika:</h1>

<form action="/adminUserEdit" method="POST">
    <label>
        Id uzytkownika: <br/>
        <input type="number" name="id" value="${user.id}" readonly><br/>
    </label>
    <label>
        Nazwa: <br/>
        <input type="text" name="name" value="${user.userName}"><br/>
    </label>
    <label>Email: <br/>
        <input type="text" name="email" value="${user.email}"><br/>
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
