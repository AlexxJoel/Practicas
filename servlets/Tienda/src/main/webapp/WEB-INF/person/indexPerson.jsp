<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="/template/head.jsp"%>

</head>
<body>
<jsp:include page="/template/navbar.jsp"/>

<div class="container">
    <h1 class="text-center my-2">INDEX PERSONA</h1>
    <c:if test="${param['result']}">
        <p>${param['message']}</p>
    </c:if>
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-6">PERSONAS</div>
                <div class="col-6 text-end">
                    <a href="createPerson" class="btn btn-success btn-sm">
                        Registrar Persona
                    </a>
                </div>
            </div>
        </div>
        <!-----------------------------------TABLA INCIO--------------------------------------------- -->
        <div class="card-body">
            <table class="table table-sm table-hover">



                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Edad</th>
                    <th scope="col">Correo</th>
                    <th scope="col">Telefono</th>
                    <th scope="col">Acciones</th>
                </tr>
                </thead>

                    <tbody>
                    <c:forEach  items="${lista}" var="li" varStatus="status">
                    <tr>
                        <td><c:out value="${status.count}"></c:out></td>
                        <td>${li.name}</td>
                        <td>${li.lastName}</td>
                        <td>${li.age}</td>
                        <td>${li.email}</td>
                        <td>${li.phone}</td>
                        <td>
                            <a href="getPerson?id=${li.id}" class="btn btn-warning btn-small">EDITAR</a>
                            <a href="#${li.id}" class="btn btn-danger btn-small">Eliminar</a>
                        </td>
                    </tr>
                    </c:forEach>

                </tbody>
            </table>
        </div>
        <!-----------------------------------TABLA FIN--------------------------------------------- -->

    </div>

</div>
<%@include file="/template/footer.jsp"%>
</body>
</html>

<%--
 <h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
 --%>