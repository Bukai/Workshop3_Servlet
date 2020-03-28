<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Panel administracyjny - uzytkownicy</title>
</head>
<body>
<%@ include file="../admin.jsp"%>
<h1>Lista uzytkownikow</h1>

<a href="/addnewuser"><button>+ Dodaj nowego uzytkownika</button></a>

<table border="1">
    <tr style="padding: 10px">
        <th>Id</th>
        <th>Imie</th>
        <th>Email</th>
        <th>Numer grupy</th>
        <th>Akcja</th>
        <th>Edytuj</th>
        <th>Usuń</th>
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
            <td><a href="/adminUserEdit?userId=${user.id}"><button>Edytuj</button></a></td>
            <td><a href="/delete?equal=user&&id=${user.id}"><button>Usuń</button></a></td>
        </tr>
    </c:forEach>
</table>
<%@include file="/lib/fragment/footer.jsp" %>

</body>
</html>
