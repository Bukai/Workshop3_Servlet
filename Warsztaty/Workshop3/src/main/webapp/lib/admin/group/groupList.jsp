<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Panel administracyjny - grupy</title>
</head>
<body>
<%@ include file="../admin.jsp"%>
<h1>Lista grup</h1>

<a href="/addnewgroup"><button>+ Dodaj grupe</button></a>

<table border="1">
    <tr style="padding: 10px">
        <th>Id</th>
        <th>Nazwa</th>
        <th>Akcje</th>
        <th>Edytuj</th>
        <th>Usuń</th>
    </tr>
    <c:forEach items="${allGroups}" var="group">
        <tr>
            <td>${group.id}</td>
            <td>${group.name}</td>
            <td><a href="/usersAdmin?groupId=${group.id}"><button>Szczegoly</button></a></td>
            <td><a href="/editgroup?groupId=${group.id}"><button>Edytuj</button></a></td>
            <td><a href="/delete?equal=group&&id=${group.id}"><button>Usuń</button></a></td>
        </tr>
    </c:forEach>
</table>
<%@include file="/lib/fragment/footer.jsp"%>
</body>
</html>
