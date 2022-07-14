var color = document.querySelector(".color");
var cuadros = document.getElementsByTagName("fieldset");

color.addEventListener("click", colores);
color.addEventListener("dblclick", coloress);

function colores() {
  for (let index = 0; index < cuadros.length; index++) {
    cuadros[index].style.background = "#fff2f2";
  }
}

function coloress() {
  for (let index = 0; index < cuadros.length; index++) {
    cuadros[index].style.background = "#f0ffff";
  }
}

console.log(cuadros);

window.addEventListener("load", () => {
  var name = prompt("Ingresa tu nombre");
  if (name==null || name=='') {
    alert('No me gusta anonimo pero entra pss')
    name = "Anonimous";    
  }
  var template = `Bienvenido ${name} acabas de ingresar al curriculum de Alan`;
  alert(template);
});

var prev = document.getElementsByName("previous");
var next = document.getElementsByName("next");
var image = document.getElementById("imagee");

console.log(prev, next, image);

var foticos = ["dog.jpg", "aaaaa.jpg", "heart.jpg"];

var imagenes = 0;

prev[0].onclick = function () {
  image.src = foticos[imagenes];
  imagenes++;
  if (imagenes > 2) {
    imagenes = 0;
  }
};

next[0].onclick = function () {
  image.src = foticos[imagenes];
  imagenes--;
  if (imagenes < 0) {
    imagenes = 2;
  }
};