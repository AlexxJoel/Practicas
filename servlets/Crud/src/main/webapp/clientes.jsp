<%--
  Created by IntelliJ IDEA.
  User: joelh
  Date: 19/07/2022
  Time: 09:59 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Lista de clientes</h1>
    <ul>
        <c:forEach var="cliente" items="${alumnos}" >
            <li>${cliente.num_control} ${cliente.nombre}</li>
        </c:forEach>
    </ul>
</body>
</html>
