<%--
  Created by IntelliJ IDEA.
  User: joelh
  Date: 29/07/2022
  Time: 01:43 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Aquiii vaan a verse los productooooos</h1>


<c:if test="${param['result']}">
    <p>${param['message']}</p>
</c:if>

</body>
</html>
