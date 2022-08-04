<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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


<div class="container">
    <form action="CustomerServlet" class="card p-5 shadow-lg" enctype="multipart/form-data">
        <div class="row">
            <div class="col-12">
                <input type="text" class="form-control form-control-sm fs-4 " id="nombreProducto" placeholder="Nombre del Producto">
            </div>

            <div class="col-12">
                <h4 class="text-center">Imagen principal</h4>
                <input class="form-control form-control-sm" type="file" name="" accept="image/*">
            </div>
            <div class="col-12">
                <h4 class="text-center">Imagen secundaria</h4>
                <input class="form-control" type="file" multiple id="imagenSecundarioa" accept="image/*">
            </div>
        </div>









        <div class="row">
            <div class="col-12 d-flex justify-content-center">
                <input class="btn btn-outline-success   m-2" id="guardar" type="submit" >
                <a class="btn btn-outline-warning m-2" id="guardarPublicar" >Guardar y publicar</a>
            </div>
        </div>
        <hr>



    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>

</html>