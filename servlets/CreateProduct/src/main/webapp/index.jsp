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
    <form action="ServletProduct" class="card p-5 shadow-lg" method="post">
        <div class="row">
            <div class="col-12">
                <input type="text" class="form-control form-control-sm fs-4 " id="nombreProducto" placeholder="Nombre del Producto">
            </div>
            <div class="col-12">
                <textarea class="form-control"  placeholder="Descripción corta del producto"></textarea>
            </div>
            <div class="col-12">
                <h4 class="text-center">Imagen principal</h4>
                <input class="form-control form-control-sm" type="file">
            </div>
            <div class="col-12">
                <h4 class="text-center">Imagen secundaria</h4>
                <input class="form-control" type="file" multiple>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <input list="categorias" class="form-control" placeholder="Selecciona Categoría">
                <datalist id="categorias">
                    <option value="Tenis">
                    <option value="Chamarra">
                    <option value="Chrome">
                    <option value="Opera">
                    <option value="Safari">
                </datalist>
            </div>
            <div class="col-12">
                <h4 class="text-center">Tipo</h4>
                <select class="form-select  w-75" id="tipoProducto" >
                    <option value="simple">Simple</option>
                    <option value="compuesto">Compuesto</option>
                </select>
            </div>
        </div>
        <!-- ----------Inicio Producto siemple ----------------->
        <section class="alert-danger alert" id="simple">
            <div class="row">
                <div class="col-12">
                    <h4 class="text-center">Color</h4>
                    <select class="form-select   w-75" id="colores" >
                        <option selected>Elige...</option>
                        <option value="Negro">Negro</option>
                        <option value="Azul">Azul</option>
                    </select>
                </div>
            </div>
            <div class="col-12">
                <h4 class="text-center">Cantidad</h4>
                <input type="number" class="form-control" >
            </div>
            <div class="col-12">
                <h4 class="text-center">Precio</h4>
                <input type="number" class="form-control" id="precio0" >
            </div>

        </section>
        <!-- ----------Fin Producto siemple ----------------->

        <!-- ----------Inicio Producto compuesto---------- -->
        <section class="border border-warning" id="compuesto">
            <div class="alert alert-primary " id="formCompu">
                <div class="row my-2" id="filaColores">
                    <hr>
                    <div class="col-12">
                        <h4 class="text-center">Color</h4>
                        <select class="form-select   w-75" id="color" >
                            <option selected>Elige...</option>
                            <option value="1">Negro</option>
                            <option value="2">Azul</option>
                        </select>
                    </div>

                    <div class="col-12">
                        <p class="m-3 text-center"><b> Unidades disponibles por talla </b></p>
                        <div class="row">
                            <div class="col-3">
                                <h6 class="fw-bold text-center">CH</h6>
                                <input type="number" class="form-control" name="chica[]" >
                                <hr>
                                <h6  class="fw-bold text-center">Precio</h6>
                                <input type="number" class="form-control" name="chicaPrecio[]">
                            </div>
                            <div class="col-3">
                                <h6 class="fw-bold text-center">ME</h6>
                                <input type="number" class="form-control" name="mediana[]" >
                                <hr>
                                <h6  class="fw-bold text-center">Precio</h6>
                                <input type="number" class="form-control" name="medianaPrecio[]">
                            </div>
                            <div class="col-3">
                                <h6 class="fw-bold text-center">GR</h6>
                                <input type="number" class="form-control" name="grande[]" >
                                <hr>
                                <h6  class="fw-bold text-center">Precio</h6>
                                <input type="number" class="form-control" name="grandePrecio[]">
                            </div>
                            <div class="col-3">
                                <h6 class="fw-bold text-center">XGR</h6>
                                <input type="number" class="form-control" name="xgrande[]" >
                                <hr>
                                <h6  class="fw-bold text-center">Precio</h6>
                                <input type="number" class="form-control" name="xgrandePrecio[]">
                            </div>
                        </div>
                    </div>



                </div>



            </div>




            <div class="row">
                <div class="col-12">
                    <a id="addColor" class="btn btn-success w-100 my-2" >Nuevo color</a>
                </div>
            </div>
        </section>



        <!-- ----------Fin Producto compuesto---------- -->


        <div class="row">
            <div class="row">
                <h4 class="text-center">Descripcion buena</h4>
                <textarea class="form-control-plaintext border border-warning"></textarea>
            </div>
        </div>
        <div class="row">
            <div class="col-12 d-flex justify-content-center">
                <button class="btn btn-outline-success  m-2"  type="submit">Guardar</button>
                <button class="btn btn-outline-warning m-2"  type="submit">Guardar y publicar</button>
            </div>
        </div>
        <hr>


    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript">



    var listTipoProduct = document.querySelector("#tipoProducto");
    var formSimple = document.querySelector("#simple");
    var formCompuesto = document.querySelector("#compuesto");
    var formCompuestoMas = document.querySelector("#new");
    var inputs = document.getElementsByTagName("input");





    var formCompuColores = document.querySelector("#formCompu");
    var filaColors = document.querySelector("#filaColores");
    var btnAddColor = document.querySelector("#addColor");

    $(function(){
        var j =1;
        $('#addColor').click(function(){

            j++;

            var template = `
                <div class="row my-2" id="newRow${j}">
                    <hr>
                    <div class="col-12">
                            <h4 class="text-center">Color</h4>
                            <select class="form-select   w-75" id="tipoProducto" >
                                <option selected>Elige...</option>
                                <option value="1">Negro</option>
                                <option value="2">Azul</option>
                            </select>
                    </div>

                    <div class="col-12">
                        <p class="m-3 text-center"><b> Unidades disponibles por talla </b></p>
                        <div class="row">
                            <div class="col-3">
                                <h6 class="fw-bold text-center">CH</h6>
                                <input type="number" class="form-control" >
                                <hr>
                                <h6  class="fw-bold text-center">Precio</h6>
                                <input type="number" class="form-control">
                            </div>
                            <div class="col-3">
                                <h6 class="fw-bold text-center">ME</h6>
                                <input type="number" class="form-control" >
                                <hr>
                                <h6  class="fw-bold text-center">Precio</h6>
                                <input type="number" class="form-control">
                            </div>
                             <div class="col-3">
                                <h6 class="fw-bold text-center">GR</h6>
                                <input type="number" class="form-control" >
                                <hr>
                                <h6  class="fw-bold text-center">Precio</h6>
                                <input type="number" class="form-control">
                            </div>
                             <div class="col-3">
                                <h6 class="fw-bold text-center">XGR</h6>
                                <input type="number" class="form-control" >
                                <hr>
                                <h6  class="fw-bold text-center">Precio</h6>
                                <input type="number" class="form-control">
                            </div>
                        </div>
                    </div>


                 <a class="btn btn-outline-danger w-100 remove-color" id="${j}">Eliminar</a>


                </div>
                 `

            $('#formCompu').append(template)

        })

        $(document).on('click', '.remove-color', function() {
            var id = $(this).attr("id");
            console.log(id)
            $('#newRow'+id).remove();
        });

    });



    formCompuesto.style.display = 'none';



    listTipoProduct.addEventListener("change", ()=>{
        var listTipoProductValor = document.querySelector("#tipoProducto").value;
        if (listTipoProductValor==='compuesto') {
            formSimple.style.display = 'none';
            formCompuesto.style.display = 'block';
            console.log(inputs.length)

        } else {
            formCompuesto.style.display = 'none';
            formSimple.style.display = 'block';
            console.log(inputs.length)

        }

   })

</script>
</body>

</html>