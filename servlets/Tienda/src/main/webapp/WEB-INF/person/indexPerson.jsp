<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <div class="card">
        <div class="card-header">
            <div class="row">
                <div class="col-6">PERSONAS</div>
                <div class="col-6 text-end">
                    <a href="#" class="btn btn-success btn-sm">
                        Registrar Persona
                    </a>
                </div>
            </div>
        </div>
        <!-----------------------------------TABLA INCIO--------------------------------------------- -->
        <div class="card-body">
            <table class="table">



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
                <tr>
                    <th scope="row">1</th>
                    <td>Mark</td>
                    <td>Otto</td>
                    <td>@mdo</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                    <td>@fat</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td colspan="2">Larry the Bird</td>
                    <td>@twitter</td>
                </tr>
                </tbody>
            </table>
        </div>
        <!-----------------------------------TABLA FIN--------------------------------------------- -->

    </div>

</div>

</body>
</html>

<%--
 <h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
 --%>