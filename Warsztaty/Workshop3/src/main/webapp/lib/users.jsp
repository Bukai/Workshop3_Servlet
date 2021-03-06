<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Uzytkownicy</title>
</head>
<body>
<%@ include file="fragment/headers/headerGroups.jsp" %>
<h1>Szczególy grupy:</h1>
<table border="1">
    <tr style="padding: 10px">
        <th>Id</th>
        <th>Imie</th>
        <th>Email</th>
        <th>Numer grupy</th>
        <th>Akcja</th>
    </tr>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}</td>
            <td>${user.userName}</td>
            <td>${user.email}</td>
            <td>${user.userGroupId}</td>
            <td><a href="/userDetails?userId=${user.id}">
                <button>Szczegoly</button>
            </a></td>
        </tr>
    </c:forEach>
</table>
<a href="/groups"><button>Powrot</button></a>
<%@include file="/lib/fragment/footer.jsp" %>

</body>
</html>
