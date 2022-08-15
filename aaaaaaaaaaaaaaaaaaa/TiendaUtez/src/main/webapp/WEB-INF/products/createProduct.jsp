<%@ page import="utez.tienda.tiendautez.products.gestion.model.ProductBean" %>
<%@ page import="java.util.List" %>
<%@ page import="utez.tienda.tiendautez.products.gestion.model.CombinationPDBean" %><%--
  Created by IntelliJ IDEA.
  User: joelh
  Date: 14/08/2022
  Time: 02:41 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: HORUS
  Date: 10/08/2022
  Time: 08:36 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%

%>


<html>
<head>
    <title>GESTION PRODUCTOS</title>
    <%@include file="/template/header.jsp"%>

</head>
<body>
<%@include file="/WEB-INF/administrator/templateAdmin/navbar.jsp"%>
<link href="${pageContext.request.contextPath}/assets/richText/richtext.min.css"  rel="stylesheet" >
<script src="${pageContext.request.contextPath}/assets/richText/jquery.richtext.js"></script>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icon@1.4.0/font/bootstrap-icons.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



<div class="p-4 mt-1 rounded rounded-3 " id="fondo">

    <div id="fondo-blanco" class="rounded p-4 shadow">
        <!-- El fondo blanco -->
        <main class="container-fluid   ">
            <!-- Contenedor principal-->

            <!----------- ----------------------------Inica formulario-------------------------------------------------- -->

            <form class="row" action="ServletImage" method="post" enctype="multipart/form-data">
                <!---------------------- Lado izquierdo ----------------------------->
                <div class="col col-lg-5 col-md-6 col-sm-12 col-12 ">

                    <div class="mt-2 sticky-top">
                        <div class="row  ">
                            <label  for="nameProduct" class="form-label">Nombre del producto</label>
                            <div class="col-12 col-lg-11 col-md-12  p-0 px-md-2  mb-3">
                                <input type="text" class="form-control form-control-lg fs-4"
                                       placeholder="Ingrese el nombre " id="nameProduct">
                            </div>

                            <div class="col-12 col-lg-11 col-md-12 p-0 px-md-2 ">
                                <label  for="shortDescription" class="form-label">Descripcion breve del producto</label>
                                <textarea class="form-control col-12 col-lg-11 col-md-12" rows="4" placeholder="Caracteristicas generales del producto" id="shortDescription"></textarea>
                            </div>
                            <!-- --------------Empiezan selectores de archivos ---------------->
                            <div class="mt-2 p-0 p-md-2 ">
                                <h5 id="titulo"  class=" text-uppercase text-center p-2" >Selección de imagenes</h5>

                                <div class="mb-3 col-12 col-lg-11 col-md-12">
                                    <label for="mainImage" class="form-label">Imagen principal</label>
                                    <input class="form-control form-control-lg" type="file" name="mainImage" >
                                </div>


                                <div class="mb-3 col-12 col-lg-11 col-md-12">
                                    <label for="images" class="form-label">Imagenes secundarias</label>
                                    <input class="form-control" type="file" id="images" >
                                    <input class="form-control" type="file" id="images" >
                                    <input class="form-control" type="file" id="images" >
                                    <input class="form-control" type="file" id="images" >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ------------------ Lado derecho ------------------------  -->
                <div class="col col-lg-7 col-md-6 col-sm-12 col-12 px-lg-3 ">

                    <!-- --------------------Fin Datos Generales -------------- -->
                    <!-- --------------------Productios generale s -------------- -->
                    <div class="row">
                        <div class="col-12 col-lg-11 col-md-12  p-0 px-md-2  mb-3 " >
                            <label class="input-text h5 text-uppercase" for="categorias">Categorias</label>
                            <select class="form-select " id="categorias"        >
                                <option inselected>Elige...</option>
                                <option value="Souvenirs">Souvenirs</option>
                                <option value="playeras">playeras</option>
                                <option value="pantalones">pantalones</option>
                            </select>
                        </div>

                        <div class="col-12 col-lg-11 col-md-12  p-0 px-md-2  mb-3 " >
                            <label class="input-text h5 rounded px-3 pb-1 mb-3 border-bottom border-info text-uppercase" for="tipoProducto">Tipo de producto</label>
                            <select class="form-select border-info" id="tipoProducto"        >
                                <option inselected>Elige...</option>
                                <option value="Simple">Simple</option>
                                <option value="Compuesto">Compuesto</option>
                            </select>
                        </div>
                    </div>


                    <section id="compuesto">
                        <div id="formCompu">
                            <div class="row" id="filaColores">
                                <div class="col-12 col-lg-11 col-md-12  p-0 px-md-2  mb-3  " >
                                    <label class="input-text h5 text-uppercase" for="categorias">Color</label>
                                    <select class="form-select "  name="colorProductos" >
                                        <option inselected>Elige...</option>
                                        <option value="Azul rey">Azul rey</option>
                                        <option value="Blanco">Blanco</option>
                                        <option value="Negro">Negro</option>
                                    </select>
                                </div>

                                <h6>Unidades por talla</h6>

                                <div class=" col-12 col-lg-11 col-md-12  p-0 px-md-2  mb-3 rounded-bottom bg-light p-2">
                                    <div class="row">
                                        <!-- ----------------------cHICA---------------- -->
                                        <div class="col-6 col-lg-3">
                                            <div class="row">
                                                <div class="col-12">
                                                    <label for="cantidad0" class="form-label">CH</label>
                                                    <input type="number" class="form-control" name="chica" >

                                                </div>

                                                <div class="col-12">
                                                    <label for="precio0" class="form-label">Precio</label>
                                                    <div class="input-group mb-3 ">
                                                        <span class="input-group-text">$</span>
                                                        <input type="number" class="form-control" name="chicaPrecio" >

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- ----------------Fin chica--------------------------- -->
                                        <!-- ----------------Mediana -------------------------- -->
                                        <div class="col-6 col-lg-3">
                                            <div class="row">
                                                <div class="col-12">
                                                    <label for="cantidad0" class="form-label">MD</label>
                                                    <input type="number" class="form-control" name="mediana" >

                                                </div>

                                                <div class="col-12">
                                                    <label for="precio0" class="form-label">Precio</label>
                                                    <div class="input-group mb-3 ">
                                                        <span class="input-group-text">$</span>
                                                        <input type="number" class="form-control" name="medianaPrecio">

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- ----------------Fin mediana --------------------------- -->
                                        <!-- ----------------Grande--------------------------- -->
                                        <div class="col-6 col-lg-3">
                                            <div class="row">
                                                <div class="col-12">
                                                    <label for="cantidad0" class="form-label">G</label>
                                                    <input type="number" class="form-control" name="grande" >

                                                </div>

                                                <div class="col-12">
                                                    <label for="precio0" class="form-label">Precio</label>
                                                    <div class="input-group mb-3 ">
                                                        <span class="input-group-text">$</span>
                                                        <input type="number" class="form-control" name="grandePrecio" >

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- ----------------Fin Grande--------------------------- -->
                                        <!-- ----------------Extra grande-------------------------- -->
                                        <div class="col-6 col-lg-3">
                                            <div class="row">
                                                <div class="col-12">
                                                    <label for="cantidad0" class="form-label">XG</label>
                                                    <input type="number" class="form-control" name="xgrande" >

                                                </div>

                                                <div class="col-12">
                                                    <label for="precio0" class="form-label">Precio</label>
                                                    <div class="input-group mb-3 ">
                                                        <span class="input-group-text">$</span>
                                                        <input type="number" class="form-control" name="xgrandePrecio" >

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- ----------------Fin ExtraGrande--------------------------- -->

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" >
                            <div class="col-12 col-lg-11 col-md-12  p-0 px-md-2  mb-3  " >

                                <div class="d-flex">

                                    <a class="btn mt-3 btn-block  text-light vw-100" type="button" style="background-color: #20c997" id="addColor">Nuevo color</a>


                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- --------------------Fin Productios generale s -------------- -->



                    <!-- ---------------- Inicio producto simple-------------------- -->


                    <section  id="simple">
                        <div class="row" >
                            <div class="col-12 col-lg-11 col-md-12  p-lg-3  px-md-4 p-2  mb-3 rounded border-success border bg-light  " >
                                <label class="input-text h5 text-uppercase" for="categorias">Color</label>
                                <select class="form-select " id="colorSimple"  >
                                    <option inselected>Elige...</option>
                                    <option value="Azul rey">Azul rey</option>
                                    <option value="Blanco">Blanco</option>
                                    <option value="Negro">Negro</option>
                                </select>

                                <label class="input-text h5 text-uppercase" for="categorias">Cantidad</label>
                                <input type="text" class="form-control"  id="cantidadSimple" >

                                <label class="input-text h5 text-uppercase" for="categorias">Precio</label>
                                <input type="text" class="form-control" id="precioSimple"  >
                            </div>

                        </div>
                    </section>


                    <!-- ---------------------------------- Fin producto simple --------------------------- -->

                </div>


                <!---------------------- Texto Eeriqueizoooooooooooo ------------------->
                <div class="row">
                    <div class="col-12 ">
                        <h5>Descripcion Larga</h5>
                        <textarea rows="5" class=" content  border border-success rounded" id="longDescription"></textarea>
                    </div>
                </div>


                <div class="row">
                    <div class="col-12">
                        <div class="container-fluid d-flex justify-content-end">

                            <button type="button"  class="btn   btn-block  m-2 btn-primary" id="boton-azul" >Regresar</button>

                            <button type="button"  class="btn   btn-block  m-2 btn-primary enviar" value="guardar" id="boton-azul" >Guardar</button>

                            <button type="button"  class="btn  btn-block  m-2  btn-primary enviar" value="guardaryenviar" id="boton-azul" >Guardar y publicar</button>


                        </div>
                    </div>
                </div>
    </div>

    </form>


    <!----------- ----------------------------Termina formulario-------------------------------------------------- -->


    </main>
</div>
</div>
<script>
    $(()=> {

        $('.content').richText();

        //Inicio query

        var listTipoProduct = document.querySelector("#tipoProducto");

        var formSimple = document.querySelector("#simple");
        var formCompuesto = document.querySelector("#compuesto");
        var formCompuestoMas = document.querySelector("#new");


        var formCompuColores = document.querySelector("#formCompu");
        var filaColors = document.querySelector("#filaColores");
        var btnAddColor = document.querySelector("#addColor");

        //Obtencion de formulario (iteasm)

        formSimple.style.display = 'none';
        formCompuesto.style.display = 'none';


        listTipoProduct.addEventListener("change", ()=>{
            var listTipoProductValor = document.querySelector("#tipoProducto").value;
            //console.log(listTipoProductValor);
            if (listTipoProductValor=='Compuesto') {
                formSimple.style.display = 'none';
                formCompuesto.style.display = 'block';
            } else {
                formCompuesto.style.display = 'none';
                formSimple.style.display = 'block';
            }

        })//Dependiento el resultado del selec se ocultara o se mostrara un dato



        var j =1; //Saber cuantas veces se va usar el teamplate
        $('#addColor').click(function(){

            j++;


            var template = `

              <div class="row" id="newRow${j}">
                    <div class="col-12 col-lg-11 col-md-12  p-0 px-md-2  mb-3  " >
                        <label class="input-text h5 text-uppercase" for="categorias">Color</label>
                        <select class="form-select "   name="colorProductos" >
                            <option inselected>Elige...</option>
                            <option value="Azul rey">Azul rey</option>
                            <option value="Blanco">Blanco</option>
                            <option value="Negro">Negro</option>
                        </select>
                    </div>

                    <h6>Unidades por talla</h6>

                    <div class=" col-12 col-lg-11 col-md-12  p-0 px-md-2  mb-3 rounded-bottom bg-light p-2">
                        <div class="row">
                            <!-- ----------------------cHICA---------------- -->
                            <div class="col-6 col-lg-3">
                                <div class="row">
                                    <div class="col-12">
                                        <label for="cantidad0" class="form-label">CH</label>
                                        <input type="number" class="form-control" name="chica" >

                                    </div>

                                    <div class="col-12">
                                        <label for="precio0" class="form-label">Precio</label>
                                        <div class="input-group mb-3 ">
                                            <span class="input-group-text">$</span>
                                            <input type="number" class="form-control" name="chicaPrecio" >

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ----------------Fin chica--------------------------- -->
                            <!-- ----------------Mediana -------------------------- -->
                            <div class="col-6 col-lg-3">
                                <div class="row">
                                    <div class="col-12">
                                        <label for="cantidad0" class="form-label">MD</label>
                                        <input type="number" class="form-control" name="mediana" >

                                    </div>

                                    <div class="col-12">
                                        <label for="precio0" class="form-label">Precio</label>
                                        <div class="input-group mb-3 ">
                                            <span class="input-group-text">$</span>
                                            <input type="number" class="form-control" name="medianaPrecio">

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ----------------Fin mediana --------------------------- -->
                            <!-- ----------------Grande--------------------------- -->
                            <div class="col-6 col-lg-3">
                                <div class="row">
                                    <div class="col-12">
                                        <label for="cantidad0" class="form-label">G</label>
                                        <input type="number" class="form-control" name="grande" >

                                    </div>

                                    <div class="col-12">
                                        <label for="precio0" class="form-label">Precio</label>
                                        <div class="input-group mb-3 ">
                                            <span class="input-group-text">$</span>
                                            <input type="number" class="form-control" name="grandePrecio" >

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ----------------Fin Grande--------------------------- -->
                            <!-- ----------------Extra grande-------------------------- -->
                            <div class="col-6 col-lg-3">
                                <div class="row">
                                    <div class="col-12">
                                        <label for="cantidad0" class="form-label">XG</label>
                                        <input type="number" class="form-control" name="xgrande" >

                                    </div>

                                    <div class="col-12">
                                        <label for="precio0" class="form-label">Precio</label>
                                        <div class="input-group mb-3 ">
                                            <span class="input-group-text">$</span>
                                            <input type="number" class="form-control" name="xgrandePrecio" >

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ----------------Fin ExtraGrande--------------------------- -->

                        </div>
                    </div>


                            <div class="col-12 col-lg-11 col-md-12  p-0 px-md-2  mb-3  " >

                                <div class="d-flex ">

                                    <a class=" mt-3 btn btn-outline-danger vw-100 remove-color" id="${j}">Eliminar</a>


                                </div>
                            </div>

                </div>

                `


            $('#formCompu').append(template) //Se le egraga al div todo el contenido html


        });


        $(document).on('click', '.remove-color', function() {
            var id = $(this).attr("id");

            Swal.fire({
                icon:'question',
                text: '¿Seguro quieres borrar la combinación?',
                showCancelButton: true,
                confirmButtonText: 'Seguro',
            }).then((result) => {
                if (result.isConfirmed) {
                    $('#newRow'+id).remove();
                    Swal.fire({
                        icon: 'success',
                        showConfirmButton: false,
                        timer:600 ,
                    })
                }
            })

        }); //Si le da eliminar al boton removera la templeate de donde lo contienee

        var status;
        $(document).on('click', '.enviar', function() {

            status=$(this).val()=="guardar"?0:1;


            var datosGenerales = new Array (6);

            datosGenerales[0] = $('#nameProduct').val();
            datosGenerales[1] = $('#shortDescription').val();
            //La imagenes se mandan mediante form action
            datosGenerales[2] = $('#categorias').val();
            datosGenerales[3] = $('#tipoProducto').val();
            datosGenerales[4] = $('#longDescription').val();
            datosGenerales[5] = status


            for (let i = 0; i < datosGenerales.length; i++) {
                console.log(datosGenerales[i]);
            }

            //-----------------------------------------------------Obtenemos datos generales del producto

            //Vemos el tipo de producto

            if (datosGenerales[3]=== "Simple") {
                console.log("------------------Simple---------------------")

                var simple={
                    color: $('#colorSimple').val(),
                    cantidad:$('#cantidadSimple').val(),
                    precio:$('#precioSimple').val(),
                    size: "NA"
                }//Hacer Json para mandarlo
                simple = JSON.stringify(simple)

                console.log(simple);//Json listo para enviar y hacer objeto

                $.post("ServletAdmin",{ 'simple': simple,'datosGeneral[]' : datosGenerales}) //Enviamos



            } else if (datosGenerales[3]== "Compuesto") {
                console.log("------------------Compuesto---------------------")

                var colorProductos = document.querySelectorAll('select[name="colorProductos"]');
                var cantidadChica = document.querySelectorAll('input[name="chica"]');
                var precioChica = document.querySelectorAll('input[name="chicaPrecio"]');
                var cantidadMediana = document.querySelectorAll('input[name="mediana"]');
                var precioMediana = document.querySelectorAll('input[name="medianaPrecio"]');
                var cantidadGrande = document.querySelectorAll('input[name="grande"]');
                var precioGrande = document.querySelectorAll('input[name="grandePrecio"]');
                var cantidadExtraGrande = document.querySelectorAll('input[name="xgrande"]');
                var precioExtraGrande = document.querySelectorAll('input[name="xgrandePrecio"]');

                //Extraemos los datos de producto(s) compuestos
                console.log(colorProductos.length + " -> numero de colores ")

                var nuevoArray = new Array(colorProductos.length); //Creacion de arreglo bidimensional
                //Sabemos que por cada color es un resgitro


                for (var i = 0; i < colorProductos.length; i++) {//Dependiendo colores itera

                    var compuesto = {

                        color:colorProductos[i].value,
                        cantidadChica:cantidadChica[i].value==0?0:cantidadChica[i].value,
                        precioChica: precioChica[i].value==0?0:precioChica[i].value,
                        cantidadMediana: cantidadMediana[i].value==0?0:cantidadMediana[i].value,
                        precioMediana: precioMediana[i].value==0?0:precioMediana[i].value,
                        cantidadGrande: cantidadGrande[i].value==0?0:cantidadGrande[i].value,
                        precioGrande: precioGrande[i].value==0?0:precioGrande[i].value,
                        cantidadExtraGrande: cantidadExtraGrande[i].value==0?0:cantidadExtraGrande[i].value,
                        precioExtraGrande: precioExtraGrande[i].value==0?0:precioExtraGrande[i].value
                    }

                    nuevoArray[i] =   JSON.stringify(compuesto)

                }

                //Mostrar datos del arreglo que contiene los json----------------------------

                for (var i = 0; i < colorProductos.length; i++) {
                    console.log("Json --->" + nuevoArray[i])
                }

                $.post("ServletAdmin",{ 'combination[]': nuevoArray,'infoGeneral[]' : datosGenerales})

                //Mandar por &post

            }else{
                console.log("Error")

            }

            //--------------------------------------------------------------


        }); //Almacenamos datos del formulario


        //-----------------------------------------------

        //----------------------Fin jquery------------------------------------------------
    });
</script>

<%@include file="/WEB-INF/administrator/templateAdmin/linksScripts.jsp"%>

<%@include file="/template/footer.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://unpkg.com/typewriter-effect@latest/dist/core.js"></script>


</body>
</html>


