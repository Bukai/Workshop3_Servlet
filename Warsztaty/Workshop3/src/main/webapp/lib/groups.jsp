<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Grupy</title>
</head>
<body>
<%@ include file="/lib/fragment/headers/headerGroups.jsp"%>

<h1>Grupy</h1>
<table border="1">
    <tr style="padding: 10px">
        <th>Id</th>
        <th>Nazwa</th>
        <th>Akcje</th>
    </tr>
    <c:forEach items="${allGroups}" var="group">
        <tr>
            <td>${group.id}</td>
            <td>${group.name}</td>
            <td><a href="/users?groupId=${group.id}"><button>Szczegoly</button></a></td>
        </tr>
    </c:forEach>
</table>
<%@include file="/lib/fragment/footer.jsp"%>
</body>
</html>
