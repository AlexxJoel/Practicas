<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="template/head.jsp"%>

</head>
<body>
<jsp:include page="template/navbar.jsp"/>

    <div class="container">
        <h1 class="text-center my-2">Mi proyecto</h1>
        <a href="hello-servlet">Este link manda a hello servlet</a>
        <br><br>
        <a href="getPersons">Ir al servletpersonas</a>

    </div>

</body>
</html>

<%--
 <h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
 --%>