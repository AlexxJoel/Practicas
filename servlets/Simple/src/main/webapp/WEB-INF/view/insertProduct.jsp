<%--
  Created by IntelliJ IDEA.
  User: joelh
  Date: 29/07/2022
  Time: 12:41 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html lang="es">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <title>Inventario</title>
</head>

<body>


<div class="container ">
    <form action="saveProduct" method="post" class="card alert alert-dark p-5 shadow-lg">
        <div class="row">
            <div class="col-12">
                <input type="text" class="form-control form-control-sm fs-4 " name="nombreProducto" placeholder="Nombre del Producto">
            </div>
            <hr>
            <div class="col-12">
                <textarea class="form-control"  placeholder="Descripción corta del producto" name="descripcionCorta"></textarea>
            </div>
            <div class="col-12">
                <h4 class="text-center">Imagen principal</h4>
                <input class="form-control form-control-sm" type="file" id="imagenPrincipal">
            </div>
            <div class="col-12">
                <h4 class="text-center">Imagen secundaria</h4>
                <input class="form-control" type="file" multiple id="imagenSecundarioa">
            </div>
        </div>

        <div class="row">
            <h4 class="text-center">Categoria</h4>
            <div class="col-12">
                <input list="categorias" class="form-control" placeholder="Selecciona Categoría" name="categoria">
                <datalist id="categorias">
                    <option value="1">
                </datalist>
            </div>
            <div class="col-12">
                <h4 class="text-center">Tipo</h4>
                <select class="form-select  w-100 shadow-lg" name="tipoProducto" >
                    <option value="simple">Simple</option>
                    <option value="compuesto">Compuesto</option>
                </select>
            </div>
        </div>

        <hr>

        <!-- ----------Inicio Producto siemple ----------------->
        <section class=" alert" id="simple">
            <div class="row">
                <div class="col-12">
                    <h4 class="text-center">Color</h4>
                    <select class="form-select   w-75" name="colorSimple" >
                        <option value="Negro">Negro</option>
                        <option value="Azul">Azul</option>
                    </select>
                </div>
            </div>
            <div class="col-12">
                <h4 class="text-center">Cantidad</h4>
                <input type="number" class="form-control" name="cantidadSimple">
            </div>
            <div class="col-12">
                <h4 class="text-center">Talla</h4>
                <input type="text" class="form-control" name="talla">
            </div>
            <div class="col-12">
                <h4 class="text-center">Precio</h4>
                <input type="number" class="form-control" name="precioSimple" >
            </div>

        </section>
        <!-- ----------Fin Producto siemple ----------------->


        <div class="row">
            <div class="row">
                <h4 class="text-center">Descripcion buena</h4>
                <textarea class="form-control" name="descLarga"></textarea>
            </div>
        </div>

        <div class="row">
            <div class="col-12 d-flex justify-content-center">
                <input class="btn btn-success m-2" type="submit" id="guardar" >
                <a class="btn btn-warning m-2" id="boton-azul" >Guardar y publicar</a>
            </div>
        </div>
        <hr>



    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>
