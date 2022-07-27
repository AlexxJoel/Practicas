<%--
  Created by IntelliJ IDEA.
  User: joelh
  Date: 22/07/2022
  Time: 02:44 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registrar Persona</title>
    <%@include file="/template/head.jsp"%>

</head>
<body>
<jsp:include page="/template/navbar.jsp"/>

<div class="container">
        <h1 class="text-center">Modificar Personas</h1>
    <div class="row">
        <div class="col-12">
            <div class="card mt-5">
                <div class="card-header">Modificar Persona</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-12">
                            <form action="updatePerson" method="post" name="registerPerson" class="needs-validation">
                              <div class="form-group mb-3">
                                  <div class="row">
                                    <div class="col">
                                        <label class="form-label fw-bold">Nombre</label>
                                        <input type="text" class="form-control"  name="name" required value="${person.name}">
                                        <div class="invalid-feedback">
                                           Campo Obligatorio
                                        </div>
                                        <input type="hidden" value="${person.id}" name="id" id="id">
                                    </div>

                                      <div class="col">
                                          <label class="form-label fw-bold">Apellido</label>
                                          <input type="text" class="form-control"  name="lastname"  value="${person.lastName}" required>
                                          <div class="invalid-feedback">
                                              Campo Obligatorio
                                          </div>
                                      </div>
                                  </div>
                              </div>

                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col">
                                            <label class="form-label fw-bold">Edad</label>
                                            <input type="number" class="form-control"  value="${person.age}"  name="age" required>
                                            <div class="invalid-feedback">
                                                Campo Obligatorio
                                            </div>
                                        </div>

                                        <div class="col">
                                            <label class="form-label fw-bold">Telefono</label>
                                            <input type="text" class="form-control"  value="${person.phone}"  name="phone" required>
                                            <div class="invalid-feedback">
                                                Campo Obligatorio
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col">
                                            <label class="form-label fw-bold">Correo Electronico</label>
                                            <input type="email" class="form-control"  value="${person.email}"  name="email" required>
                                            <div class="invalid-feedback">
                                                Campo Obligatorio
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group mb-3">
                                    <div class="row">
                                        <div class="col-12 text-end">
                                            <button type="submit" class="btn btn-success btn-sm">Modificar</button>
                                            <button type="button" class="btn btn-danger btn-sm">Cancelar</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function () {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.prototype.slice.call(forms)
            .forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }

                    form.classList.add('was-validated')
                }, false)
            })
    })()
</script>
</body>
<%@include file="/template/footer.jsp"%>

</html>
